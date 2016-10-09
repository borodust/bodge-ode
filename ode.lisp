(cl:in-package :clode)


(cffi:define-foreign-library ode
  (:darwin (:or "libode.6.dylib" "libode.dylib"))
  (:unix (:or "libode.so.1" "libode.so"))
  (:windows "ode.dll")
  (t (:default "ode")))


(cffi:use-foreign-library ode)
