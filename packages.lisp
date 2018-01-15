(cl:defpackage :%ode
  (:use))


(cl:defpackage :bodge-ode
  (:nicknames :ode)
  (:use :cl :alexandria :claw)
  (:export +double-precision-p+
           +infinity+
           contact-flags
           define-collision-callback
           collision-callback
           space-collide))
