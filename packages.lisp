(in-package :bodge-ode.def)


(defpackage :%ode)


(defpackage :bodge-ode
  (:use :cl :alexandria :autowrap :plus-c)
  (:export define-collision-callback
           collision-callback
           space-collide))
