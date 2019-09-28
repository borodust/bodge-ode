(cl:defpackage :ode.example
  (:use :cl :cffi-c-ref)
  (:export run))
(cl:in-package :ode.example)

;;;
;;; Literal translation of the example from
;;; https://www.ode-wiki.org/wiki/index.php?title=HOWTO_simple_bouncing_sphere
;;;

;;;
;;; First the objects for the simulation must be declared. You must have a world, a space to put
;;; everything in, a body with associated geometry and mass, and a joint group to store the
;;; contact joints that are created during a collision.

;; dynamics and collision objects
(defvar *world* nil)
(defvar *space* nil)
(defvar *body* nil)
(defvar *geom* nil)
(defvar *m* (cffi:foreign-alloc '%ode:mass))
(defvar *contactgroup* nil)

;;; When the collision system detects that two objects are colliding, it calls this routine
;;; which determines the points of contact and creates temporary joints. The surface parameters
;;; of the joint (friction, bounce velocity, CFM, etc) are also set here.

;; this is called by dSpaceCollide when two objects in space are
;; potentially colliding.
(cffi:defcallback near-callback :void ((data :pointer)
                                       (o1 %ode:geom-id)
                                       (o2 %ode:geom-id))
  (declare (ignore data))
  (let ((b1 (%ode:geom-get-body o1))
        (b2 (%ode:geom-get-body o2)))
    (c-with ((contact %ode:contact :clear t))
      (setf (contact :surface :mode) (logior %ode:+contact-bounce+
                                             %ode:+contact-soft-cfm+)
            ;; friction parameter
            (contact :surface :mu) ode:+infinity+
            ;; bounce is the amount of "bouncyness"
            (contact :surface :bounce) 0.9d0
            ;; bounce_vel is the minimum incoming velocity to cause a bounce
            (contact :surface :bounce-vel) 0.1d0
            ;; constraint force mixing parameter
            (contact :surface :soft-cfm) 0.001d0)
      (let ((numc (%ode:collide o1 o2 1 (contact :geom &)
                                (cffi:foreign-type-size '%ode:contact))))
        (when (< 0 numc)
          (let ((c (%ode:joint-create-contact *world* *contactgroup* (contact &))))
            (%ode:joint-attach c b1 b2)))))))

;;; This is the main simulation loop that calls the collision detection function, steps the
;;; simulation, resets the temporary contact joint group, and redraws the objects at their new
;;; position.

;; simulation loop
(defun sim-loop ()
  (%ode:space-collide *space* nil (cffi:callback near-callback))
  (%ode:world-quick-step *world* 0.01d0)
  (%ode:joint-group-empty *contactgroup*)
  (c-let ((pos :double :from (%ode:geom-get-position *geom*))
          (r :double :from (%ode:geom-get-rotation *geom*)))
    (format t "~&Position: [~{~,4f~^ ~}], Rotation: [~{~,4f~^ ~}][~{~,4f~^ ~}][~{~,4f~^ ~}]"
            (list (pos 0) (pos 1) (pos 2))
            (list (r 0) (r 1) (r 2) (r 3))
            (list (r 4) (r 5) (r 6) (r 7))
            (list (r 8) (r 9) (r 10) (r 11)))))

;;; When the program starts, the callbacks are set up, everything is initialized, and then the
;;; simulation is started

(defun main ()
  ;; create world
  (%ode:init-ode)
  (setf *world* (%ode:world-create)
        *space* (%ode:hash-space-create nil))
  (%ode:world-set-gravity *world* 0d0 0d0 -9.8d0) ; here i put a bit more gravity than in the
                                        ; example for the output to be more exciting
  (%ode:world-set-cfm *world* 1d-5)
  (%ode:create-plane *space* 0d0 0d0 1d0 0d0)
  (setf *contactgroup* (%ode:joint-group-create 0)
        ;; create object
        *body* (%ode:body-create *world*)
        *geom* (%ode:create-sphere *space* 0.5d0))
  (c-let ((m %ode:mass :from *m*))
    (%ode:mass-set-sphere (m &) 1d0 0.5d0)
    (%ode:body-set-mass *body* (m &))
    (%ode:geom-set-body *geom* *body*))
  ;; set initial position
  (%ode:body-set-position *body* 0d0 0d0 3d0)
  ;; run simulation
  (loop for i from 0 below 200
        do (sim-loop))
  ;; clean up
  (%ode:joint-group-destroy *contactgroup*)
  (%ode:space-destroy *space*)
  (%ode:world-destroy *world*)
  (%ode:close-ode))


(defun run ()
  (main))
