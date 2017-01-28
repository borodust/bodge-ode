(in-package :bodge-ode.def)


(defpackage :%ode
  (:use))


(defpackage :bodge-ode
  (:nicknames :ode)
  (:use :cl :alexandria :autowrap :plus-c)
  (:export +double-precision-p+
           +infinity+
           contact-flags
           define-collision-callback
           collision-callback
           space-collide))
