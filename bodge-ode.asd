(asdf:defsystem bodge-ode
  :description "Thin wrapper around Open Dynamics Engine for cl-bodge system"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi claw)
  :serial t
  :components ((:file "packages")
               (:file "libode")
               (:static-file "bodge_ode.h")
               (:file "claw")
               (:file "ode")
               (:module ode-includes :pathname "lib/ode/include")
               (:module spec)))
