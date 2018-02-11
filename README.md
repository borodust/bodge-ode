[![Build Status](https://travis-ci.org/borodust/bodge-ode.svg)](https://travis-ci.org/borodust/bodge-ode) [![Build status](https://ci.appveyor.com/api/projects/status/n7entaf91bw2rf6p?svg=true)](https://ci.appveyor.com/project/borodust/bodge-ode)

# BODGE-ODE

Thin Common Lisp wrapper over [Open Dynamics Engine](https://www.ode-wiki.org/wiki/).

# Requirements

* ASDF/Quicklisp
* x86_64/i686 GNU/Linux, macOS or Windows

# Loading
```lisp
(ql:quickload '(ode-blob bodge-ode))
```

# Usage

### Interface
All wrapped functions can be found in `%ode` package. On the other hand, `ode` package contains
minimally lispified wrappers and utility functions.


# Example
Lispified ODE sphere
[example](https://www.ode-wiki.org/wiki/index.php?title=HOWTO_simple_bouncing_sphere) can be
found in [`example.lisp`](example.lisp)

To run it, evaluate in your REPL:
```lisp
(ql:quickload :bodge-ode/example)
(ode.example:run)
```
