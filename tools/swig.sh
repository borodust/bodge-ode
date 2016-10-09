#!/bin/bash

WORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LOCAL_DIR="$WORK_DIR/../local/"

mkdir -p "$LOCAL_DIR"
swig -cffi -I/usr/local/include -I/usr/include -generate-typedef -noswig-lisp -cpperraswarn -o "$LOCAL_DIR/library.lisp"  "$WORK_DIR/ode-swig.i"
