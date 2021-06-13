(cl:defpackage :ode
  (:nicknames :ode)
  (:use :cl :alexandria)
  (:export #:+infinity+
           #:contact-flags
           #:define-collision-callback
           #:collision-callback
           #:space-collide))
