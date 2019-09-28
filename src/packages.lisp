(cl:defpackage :ode
  (:nicknames :ode)
  (:use :cl :alexandria :claw)
  (:export +infinity+
           contact-flags
           define-collision-callback
           collision-callback
           space-collide))
