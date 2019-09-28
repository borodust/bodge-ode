(uiop:define-package :%ode
  (:use))

(claw:defwrapper (ode::bodge-ode
                  (:includes :ode-includes)
                  (:include-definitions "^dx?[A-Z]\\w*"))
  :in-package :%ode
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :recognize-arrays t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer)
                   (:array claw-utils:claw-array))
  :symbolicate-names (:by-removing-complex-prefix "^dx?[A-Z]\\w*" 1))
