%module library

#define dSINGLE
#define __inline


%feature("intern_function","lispify");
%feature("export");


%include <ode/odeconfig.h>
%include <ode/compatibility.h>
%include <ode/common.h>
%include <ode/odeinit.h>
%include <ode/contact.h>
%include <ode/error.h>
%include <ode/odemath.h>
%include <ode/matrix.h>
%include <ode/mass.h>
%include <ode/objects.h>
%include <ode/collision_space.h>
%include <ode/collision.h>
%include <ode/collision_trimesh.h>
%include <ode/version.h>
