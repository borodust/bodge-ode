(asdf:defsystem bodge-ode
  :description "Thin wrapper over Open Dynamics Engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils)
  :pathname "src/"
  :serial t
  :components ((:file "packages")
               (:static-file "bodge_ode.h")
               (:file "claw")
               (:file "ode")
               (:module :ode-includes :pathname "lib/ode/include")
               (:module :spec)))


(asdf:defsystem bodge-ode/example
  :description "Simple example for bodge-ode"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:ode-blob :bodge-ode :claw :cffi-c-ref)
  :pathname "src/"
  :components ((:file "example")))
