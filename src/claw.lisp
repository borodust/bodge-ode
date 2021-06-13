(claw:defwrapper (:bodge-ode
                  (:system :bodge-ode/wrapper)
                  (:headers "bodge_ode.h")
                  (:includes "src/" :ode-includes)
                  (:include-definitions "^dx?[A-Z]\\w*")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :x86-64 :windows) "x86_64-w64-mingw32")
                            ((:and :x86-64 :drawin) "x86_64-apple-darwin-gnu"))
                  (:persistent t
                   :depends-on (:claw-utils)))
  :in-package :%ode
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :recognize-arrays t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer)
                   (:array claw-utils:claw-array))
  :symbolicate-names (:by-removing-complex-prefix "^dx?[A-Z]\\w*" 1))
