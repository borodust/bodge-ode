(cl:defpackage :%ode
  (:use))


(cl:defpackage :ode
  (:nicknames :ode)
  (:use :cl :alexandria :claw)
  (:export libode
           +infinity+
           contact-flags
           define-collision-callback
           collision-callback
           space-collide))
