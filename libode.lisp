(cl:in-package :ode)


(cffi:define-foreign-library libode
  (:darwin "libode.dylib.bodged")
  (:unix "libode.so.bodged")
  (:windows "ode.dll.bodged"))
