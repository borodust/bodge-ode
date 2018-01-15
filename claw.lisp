(in-package :bodge-ode)


(claw:c-include "lib.h" bodge-ode
  :package :%ode
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
  :prefix-regex (("dx?[A-Z]\\w*" 1)))
