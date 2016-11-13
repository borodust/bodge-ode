(in-package :bodge-ode)


(declaim (special *collision-input*))


(defmacro define-collision-callback (name (collision-input this-geom that-geom) &body body)
  (with-gensyms (data-ptr g0 g1)
    `(defcallback ,name :void ((,data-ptr :pointer) (,g0 %ode:geom-id) (,g1 %ode:geom-id))
       (declare (ignore ,data-ptr))
       (let ((,collision-input *collision-input*)
             (,this-geom ,g0)
             (,that-geom ,g1))
         (declare (ignorable ,collision-input))
         ,@body))))


(defmacro collision-callback (callback-name)
  `(callback ',callback-name))


(defun space-collide (space collision-input collision-callback)
  (let ((*collision-input* collision-input))
    (%ode:space-collide space (cffi:null-pointer) collision-callback)))
