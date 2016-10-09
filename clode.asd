(in-package :cl-user)


(defpackage :clode.def
  (:use :cl :asdf))

(in-package :clode.def)

(defsystem clode
  :description "Thin wrapper around Open Dynamics Engine"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :defsystem-depends-on (cffi-grovel)
  :depends-on (cffi alexandria)
  :serial t
  :components ((:file "packages")
               (:file "utils")
               (:file "ode")
               (:file "types")
               (:file "constants")
               (:cffi-grovel-file "grovel-conf")
               (:file "functions")))
