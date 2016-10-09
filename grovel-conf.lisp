(in-package :clode)

(include "ode/odeconfig.h"
         "ode/compatibility.h"
         "ode/common.h"
         "ode/odeinit.h"
         "ode/contact.h"
         "ode/error.h"
         "ode/odemath.h"
         "ode/matrix.h"
         "ode/mass.h"
         "ode/objects.h"
         "ode/collision_space.h"
         "ode/collision.h"
         "ode/collision_trimesh.h"
         "ode/version.h")


(ctype tri-index "dTriIndex")
(ctype uint8 "duint8")
(ctype int8 "dint8")
(ctype uint16 "duint16")
(ctype int16 "dint16")
(ctype uint32 "duint32")
(ctype int32 "dint32")
(ctype uint64 "duint64")
(ctype int64 "dint64")


(cenum allocate-odedata-flags
       ((:allocate-flag-basic-data "dAllocateFlagBasicData"))
       ((:allocate-flag-collision-data "dAllocateFlagCollisionData"))
       ((:allocate-mask-all "dAllocateMaskAll")))


(cenum init-odeflags
       ((:init-flag-manual-thread-cleanup "dInitFlagManualThreadCleanup")))


(cenum joint-type
       ((:joint-type-none "dJointTypeNone"))
       ((:joint-type-ball "dJointTypeBall"))
       ((:joint-type-hinge "dJointTypeHinge"))
       ((:joint-type-slider "dJointTypeSlider"))
       ((:joint-type-contact "dJointTypeContact"))
       ((:joint-type-universal "dJointTypeUniversal"))
       ((:joint-type-hinge2 "dJointTypeHinge2"))
       ((:joint-type-fixed "dJointTypeFixed"))
       ((:joint-type-null "dJointTypeNull"))
       ((:joint-type-amotor "dJointTypeAMotor"))
       ((:joint-type-lmotor "dJointTypeLMotor"))
       ((:joint-type-plane-2d "dJointTypePlane2D"))
       ((:joint-type-pr "dJointTypePR"))
       ((:joint-type-pu "dJointTypePU"))
       ((:joint-type-piston "dJointTypePiston"))
       ((:joint-type-dball "dJointTypeDBall"))
       ((:joint-type-dhinge "dJointTypeDHinge"))
       ((:joint-type-transmission "dJointTypeTransmission")))


(cstruct geom-class "dGeomClass"
         (bytes "bytes" :type :int)
         (collider "collider" :type :pointer)
         (aabb "aabb" :type :pointer)
         (aabb-test "aabb_test" :type :pointer)
         (tor "dtor" :type :pointer))


(cstruct world-step-memory-functions-info "dWorldStepMemoryFunctionsInfo"
         (struct-size "struct_size" :type :unsigned-int)
         (alloc-block "alloc_block" :type :pointer)
         (shrink-block "shrink_block" :type :pointer)
         (free-block "free_block" :type :pointer))


(cstruct world-step-reserve-info "dWorldStepReserveInfo"
         (struct-size "struct_size" :type :unsigned-int)
         (reserve-factor "reserve_factor" :type :float)
         (reserve-minimum "reserve_minimum" :type :unsigned-int))


(cstruct mass "dMass"
         (mass "mass" :type :float)
         (c "c" :type :pointer)
         (i "I" :type :pointer))


(cstruct surface-parameters "dSurfaceParameters"
         (mode "mode" :type :int)
         (mu "mu" :type :float)
         (mu2 "mu2" :type :float)
         (rho "rho" :type :float)
         (rho2 "rho2" :type :float)
         (rho-n "rhoN" :type :float)
         (bounce "bounce" :type :float)
         (bounce-vel "bounce_vel" :type :float)
         (soft-erp "soft_erp" :type :float)
         (soft-cfm "soft_cfm" :type :float)
         (motion1 "motion1" :type :float)
         (motion2 "motion2" :type :float)
         (motionn "motionN" :type :float)
         (slip1 "slip1" :type :float)
         (slip2 "slip2" :type :float))


(cstruct contact-geom "dContactGeom"
         (pos "pos" :type :pointer)
         (normal "normal" :type :pointer)
         (depth "depth" :type :float)
         (g1 "g1" :type :pointer)
         (g2 "g2" :type :pointer)
         (side1 "side1" :type :int)
         (side2 "side2" :type :int))


(cstruct contact "dContact"
         (surface "surface" :type surface-parameters)
         (geom "geom" :type contact-geom)
         (fdir1 "fdir1" :type :pointer))


(cstruct joint-feedback "dJointFeedback"
         (f1 "f1" :type :pointer)
         (t1 "t1" :type :pointer)
         (f2 "f2" :type :pointer)
         (t2 "t2" :type :pointer))
