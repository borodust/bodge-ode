(in-package :bodge-ode)


(c-include '(bodge-ode spec "lib.h")
 :spec-path '(bodge-ode spec)
 :definition-package :%ode
 :sysincludes (append #+windows
		      (list "c:/msys64/mingw64/x86_64-w64-mingw32/include/"
			    "c:/msys64/mingw64/include/"
			    "c:/msys64/usr/local/include/"))
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
 :exclude-definitions ("dWorldSetStepThreadingImplementation"
		       "vswprintf")
 :include-definitions (;; common
		       "^(__)?(u|u_)?int.{0,2}(ptr)?(_t)?$"
		       "wchar_t"
		       "size_t")
 :symbol-regex (("dx?[A-Z]\\w*" () (lambda (name matches regex)
                                   (declare (ignore matches regex))
                                   (subseq name 1)))))
