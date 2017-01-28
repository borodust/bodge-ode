(in-package :bodge-ode)


(declaim (special *collision-input*))


(define-bitmask-from-constants (contact-flags)
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


(define-constant +double-precision-p+
    (if (search "double_precision" (%ode:get-configuration)) t nil))


(define-constant +infinity+
    (if +double-precision-p+
        (progn
          #+sbcl sb-ext:double-float-positive-infinity
          #+clozure 1D++0
          #+abcl ext:double-float-positive-infinity
          #+allegro excl::*infinity-double*
          #+cmu ext:double-float-positive-infinity
          #+(and ecl (not infinity-not-available)) si:double-float-positive-infinity
          #+lispworks #.(read-from-string "10E999")
          #+scl ext:double-float-positive-infinity
          #-(or sbcl clozure abcl allegro cmu ecl lispworks scl)
          most-positive-double-float)
        (progn
          #+sbcl sb-ext:single-float-positive-infinity
          #+clozure 1S++0
          #+abcl ext:single-float-positive-infinity
          #+allegro excl::*infinity-single*
          #+cmu ext:single-float-positive-infinity
          #+(and ecl (not infinity-not-available)) si:single-float-positive-infinity
          #+lispworks (coerce infinity$$ 'single-float)
          #+scl ext:single-float-positive-infinity
          #-(or sbcl clozure abcl allegro cmu ecl lispworks scl)
          most-positive-single-float))
  :test 'eql)


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
