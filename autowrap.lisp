(in-package :bodge-ode)


(c-include '(bodge-ode spec "lib.h")
 :spec-path '(bodge-ode spec)
 :definition-package :%ode
 :exclude-sources (".*.h")
 :include-sources ("ode/odeconfig.h"
                   "ode/common.h"
                   "ode/odeinit.h"
                   "ode/contact.h"
                   "ode/error.h"
                   "ode/mass.h"
                   "ode/objects.h"
                   "ode/collision_space.h"
                   "ode/collision.h"
                   "ode/version.h")
 :exclude-definitions ("dWorldSetStepThreadingImplementation")
 :symbol-regex (("dx?[A-Z]\\w*" () (lambda (name matches regex)
                                   (declare (ignore matches regex))
                                   (subseq name 1)))))
