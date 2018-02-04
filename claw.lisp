(claw:c-include "bodge_ode.h" bodge-ode
  :in-package :%ode
  :sysincludes (:ode-includes)
  :include-definitions ("dx?[A-Z]\\w*")
  :rename-symbols (claw:by-removing-complex-prefix "dx?[A-Z]\\w*" 1))
