(cl:in-package :%ode)


(cffi:define-foreign-library libode
  (:darwin (:or "libode.6.dylib" "libode.dylib"))
  (:unix (:or "libode.so.6" "libode.so"))
  (:windows "ode.dll")
  (t (:default "ode")))


(cffi:use-foreign-library libode)
