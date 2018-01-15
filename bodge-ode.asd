(asdf:defsystem bodge-ode
  :description "Thin wrapper around Open Dynamics Engine for cl-bodge system"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi bodge-autowrap bodge-plus-c)
  :serial t
  :components ((:file "packages")
               (:file "libode")
               (:static-file "lib.h")
               (:file "claw")
               (:file "ode")
               (:module spec)))
