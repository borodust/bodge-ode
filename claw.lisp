(claw:c-include "bodge_ode.h" bodge-ode
  :in-package :%ode
  :sysincludes (:ode-includes)
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
