(claw:c-include "lib.h" bodge-ode
  :in-package :%ode
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
  :rename-symbols (claw:by-removing-complex-prefix "dx?[A-Z]\\w*" 1))
