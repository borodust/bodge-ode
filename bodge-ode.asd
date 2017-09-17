(in-package :cl-user)


(defpackage :bodge-ode.def
  (:use :cl :asdf))

(in-package :bodge-ode.def)

(defsystem bodge-ode
  :description "Thin wrapper around Open Dynamics Engine for cl-bodge system"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi bodge-autowrap cl-plus-c)
  :serial t
  :components ((:file "packages")
               (:file "libode")
               (:static-file "lib.h")
               (:file "autowrap")
               (:file "ode")
               (:module spec)))
