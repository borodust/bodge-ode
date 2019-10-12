(cl:in-package :ode)


(declaim (special *collision-input*))


(claw-utils:define-bitfield-from-constants contact-flags
  %ode:+contact-mu2+
  %ode:+contact-axis-dep+
  %ode:+contact-f-dir1+
  %ode:+contact-bounce+
  %ode:+contact-soft-erp+
  %ode:+contact-soft-cfm+
  %ode:+contact-motion1+
  %ode:+contact-motion2+
  %ode:+contact-motion-n+
  %ode:+contact-slip1+
  %ode:+contact-slip2+
  %ode:+contact-rolling+
  %ode:+contact-approx0+
  %ode:+contact-approx1-1+
  %ode:+contact-approx1-2+
  %ode:+contact-approx1-n+
  %ode:+contact-approx1+)


(define-constant +infinity+ float-features:single-float-positive-infinity :test '=)


(defmacro define-collision-callback (name (collision-input this-geom that-geom) &body body)
  (with-gensyms (data-ptr g0 g1)
    `(cffi:defcallback ,name :void ((,data-ptr :pointer)
                                    (,g0 %ode:geom-id)
                                    (,g1 %ode:geom-id))
       (declare (ignore ,data-ptr))
       (let ((,collision-input *collision-input*)
             (,this-geom ,g0)
             (,that-geom ,g1))
         (declare (ignorable ,collision-input))
         ,@body))))


(defmacro collision-callback (callback-name)
  `(cffi:callback ,callback-name))


(defun space-collide (space collision-input collision-callback)
  (let ((*collision-input* collision-input))
    (%ode:space-collide space (cffi:null-pointer) collision-callback)))
