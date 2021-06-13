(asdf:defsystem bodge-ode
  :description "Thin wrapper over Open Dynamics Engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :float-features :bodge-ode-bindings)
  :pathname "src/"
  :serial t
  :components ((:file "packages")
               (:file "ode")))


(asdf:defsystem bodge-ode/wrapper
  :description "Thin wrapper over Open Dynamics Engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils :float-features)
  :serial t
  :components ((:file "src/claw")
               (:module :ode-includes :pathname "src/lib/ode/include")))


(asdf:defsystem bodge-ode/example
  :description "Simple example for bodge-ode"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:ode-blob :bodge-ode :cffi-c-ref)
  :pathname "src/"
  :components ((:file "example")))
