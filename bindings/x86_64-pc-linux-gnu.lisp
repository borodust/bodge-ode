(uiop:define-package :%ode (:use))
(uiop:define-package :bodge-ode-bindings~pristine (:use :cl))
(common-lisp:in-package :bodge-ode-bindings~pristine)

(defparameter %ode::+c-cylinder-class+ 2)

(defparameter %ode::+create-c-cylinder+ nil)

(defparameter %ode::+geom-c-cylinder-get-params+ nil)

(defparameter %ode::+geom-c-cylinder-point-depth+ nil)

(defparameter %ode::+geom-c-cylinder-set-params+ nil)

(defparameter %ode::+infinity+ :short-float-positive-infinity)

(defparameter %ode::+na-n+ nil)

(defparameter %ode::+sap-axes-xyz+ 36)

(defparameter %ode::+sap-axes-xzy+ 24)

(defparameter %ode::+sap-axes-yxz+ 33)

(defparameter %ode::+sap-axes-yzx+ 9)

(defparameter %ode::+sap-axes-zxy+ 18)

(defparameter %ode::+sap-axes-zyx+ 6)

(defparameter %ode::+single+ nil)

(defparameter %ode::+threading-thread-count-unlimited+ 0)

(defparameter %ode::+worldstep-reservefactor-default+ 1.2000000476837158D0)

(defparameter %ode::+worldstep-reservesize-default+ 65536)

(defparameter %ode::+worldstep-threadcount-unlimited+ 0)

(cffi:defcenum (%ode::allocate-ode-data-flags :int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/odeinit.h:146:6"
               (:flag-basic-data 0)
               (:flag-collision-data 1)
               (:mask-all -1))

(cffi:defbitfield (%ode::init-ode-flags :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/odeinit.h:76:6"
                  (:init-flag-manual-thread-cleanup 1))

(cffi:defcenum (%ode::|C:@EA@D-DYNAMICS-AXIS| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:112:9"
               (:-min 0)
               (:-l-min 0)
               (:lx 0)
               (:ly 1)
               (:lz 2)
               (:-l-max 3)
               (:-a-min 3)
               (:ax 3)
               (:ay 4)
               (:az 5)
               (:-a-max 6)
               (:-max 6))

(cffi:defcenum (%ode::|C:@EA@D-JOINT-TYPE| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:383:9"
               (:none 0)
               (:ball 1)
               (:hinge 2)
               (:slider 3)
               (:contact 4)
               (:universal 5)
               (:hinge2 6)
               (:fixed 7)
               (:null 8)
               (:a-motor 9)
               (:l-motor 10)
               (:plane2d 11)
               (:pr 12)
               (:pu 13)
               (:piston 14)
               (:d-ball 15)
               (:d-hinge 16)
               (:transmission 17))

(cffi:defcenum (%ode::|C:@EA@D-MAT3ELEMENT| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:163:9"
               (:-min 0)
               (:-x-min 0)
               (:-x-axes-min 0)
               (:xx 0)
               (:xy 1)
               (:xz 2)
               (:-x-axes-max 3)
               (:xpad 3)
               (:-x-max 4)
               (:-y-min 4)
               (:-y-axes-min 4)
               (:yx 4)
               (:yy 5)
               (:yz 6)
               (:-y-axes-max 7)
               (:ypad 7)
               (:-y-max 8)
               (:-z-min 8)
               (:-z-axes-min 8)
               (:zx 8)
               (:zy 9)
               (:zz 10)
               (:-z-axes-max 11)
               (:zpad 11)
               (:-z-max 12)
               (:-max 12))

(cffi:defcenum (%ode::|C:@EA@D-MAT4ELEMENT| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:211:9"
               (:-min 0)
               (:-x-min 0)
               (:xx 0)
               (:xy 1)
               (:xz 2)
               (:xo 3)
               (:-x-max 4)
               (:-y-min 4)
               (:yx 4)
               (:yy 5)
               (:yz 6)
               (:yo 7)
               (:-y-max 8)
               (:-z-min 8)
               (:zx 8)
               (:zy 9)
               (:zz 10)
               (:zo 11)
               (:-z-max 12)
               (:-o-min 12)
               (:ox 12)
               (:oy 13)
               (:oz 14)
               (:oo 15)
               (:-o-max 16)
               (:-max 16))

(cffi:defcenum (%ode::|C:@EA@D-MESH-TRIANGLE-VERTEX| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/collision_trimesh.h:48:9"
               (:-min 0)
               (:first 0)
               (:second 1)
               (:third 2)
               (:-max 3))

(cffi:defcenum (%ode::|C:@EA@D-MOTION-DYNAMICS| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:103:9"
               (:-min 0)
               (:linear 0)
               (:angular 1)
               (:-max 2))

(cffi:defcenum (%ode::|C:@EA@D-QUAT-ELEMENT| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:253:9"
               (:-min 0)
               (:r 0)
               (:-axis-min 1)
               (:i 1)
               (:j 2)
               (:k 3)
               (:-axis-max 4)
               (:-max 4))

(cffi:defcenum (%ode::|C:@EA@D-SPACE-AXIS| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:93:9"
               (:-min 0)
               (:x 0)
               (:y 1)
               (:z 2)
               (:-max 3))

(cffi:defcenum (%ode::|C:@EA@D-VEC3ELEMENT| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:134:9"
               (:-min 0)
               (:-axes-min 0)
               (:x 0)
               (:y 1)
               (:z 2)
               (:-axes-max 3)
               (:pad 3)
               (:-max 4)
               (:-axes-count 3))

(cffi:defcenum (%ode::|C:@EA@D-VEC4ELEMENT| :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-ode/src/lib/ode/include/ode/common.h:152:9"
               (:-min 0)
               (:x 0)
               (:y 1)
               (:z 2)
               (:o 3)
               (:-max 4))

(defparameter %ode::+fp-nan+ 0)

(defparameter %ode::+fp-infinite+ 1)

(defparameter %ode::+fp-zero+ 2)

(defparameter %ode::+fp-subnormal+ 3)

(defparameter %ode::+fp-normal+ 4)

(defparameter %ode::+a-motor-user+ 0)

(defparameter %ode::+a-motor-euler+ 1)

(defparameter %ode::+contact-mu2+ 1)

(defparameter %ode::+contact-axis-dep+ 1)

(defparameter %ode::+contact-f-dir1+ 2)

(defparameter %ode::+contact-bounce+ 4)

(defparameter %ode::+contact-soft-erp+ 8)

(defparameter %ode::+contact-soft-cfm+ 16)

(defparameter %ode::+contact-motion1+ 32)

(defparameter %ode::+contact-motion2+ 64)

(defparameter %ode::+contact-motion-n+ 128)

(defparameter %ode::+contact-slip1+ 256)

(defparameter %ode::+contact-slip2+ 512)

(defparameter %ode::+contact-rolling+ 1024)

(defparameter %ode::+contact-approx0+ 0)

(defparameter %ode::+contact-approx1-1+ 4096)

(defparameter %ode::+contact-approx1-2+ 8192)

(defparameter %ode::+contact-approx1-n+ 16384)

(defparameter %ode::+contact-approx1+ 28672)

(defparameter %ode::+geom-collider-merge-contacts-value--default+ 0)

(defparameter %ode::+geom-collider-merge-contacts-value-none+ 1)

(defparameter %ode::+geom-collider-merge-contacts-value-normals+ 2)

(defparameter %ode::+geom-collider-merge-contacts-value-full+ 3)

(defparameter %ode::+geom-common-any-control-code+ 0)

(defparameter %ode::+geom-collider-set-merge-sphere-contacts-control-code+ 1)

(defparameter %ode::+geom-collider-get-merge-sphere-contacts-control-code+ 2)

(defparameter %ode::+geom-common-control-class+ 0)

(defparameter %ode::+geom-collider-control-class+ 1)

(defparameter %ode::+meshdatause-edge1+ 1)

(defparameter %ode::+meshdatause-edge2+ 2)

(defparameter %ode::+meshdatause-edge3+ 4)

(defparameter %ode::+meshdatause-vertex1+ 8)

(defparameter %ode::+meshdatause-vertex2+ 16)

(defparameter %ode::+meshdatause-vertex3+ 32)

(defparameter %ode::+max-user-classes+ 4)

(defparameter %ode::+param-lo-stop+ 0)

(defparameter %ode::+param-hi-stop+ 1)

(defparameter %ode::+param-vel+ 2)

(defparameter %ode::+param-lo-vel+ 3)

(defparameter %ode::+param-hi-vel+ 4)

(defparameter %ode::+param-f-max+ 5)

(defparameter %ode::+param-fudge-factor+ 6)

(defparameter %ode::+param-bounce+ 7)

(defparameter %ode::+param-cfm+ 8)

(defparameter %ode::+param-stop-erp+ 9)

(defparameter %ode::+param-stop-cfm+ 10)

(defparameter %ode::+param-suspension-erp+ 11)

(defparameter %ode::+param-suspension-cfm+ 12)

(defparameter %ode::+param-erp+ 13)

(defparameter %ode::+params-in-group+ 14)

(defparameter %ode::+param-group1+ 0)

(defparameter %ode::+param-lo-stop1+ 0)

(defparameter %ode::+param-hi-stop1+ 1)

(defparameter %ode::+param-vel1+ 2)

(defparameter %ode::+param-lo-vel1+ 3)

(defparameter %ode::+param-hi-vel1+ 4)

(defparameter %ode::+param-f-max1+ 5)

(defparameter %ode::+param-fudge-factor1+ 6)

(defparameter %ode::+param-bounce1+ 7)

(defparameter %ode::+param-cfm1+ 8)

(defparameter %ode::+param-stop-erp1+ 9)

(defparameter %ode::+param-stop-cfm1+ 10)

(defparameter %ode::+param-suspension-erp1+ 11)

(defparameter %ode::+param-suspension-cfm1+ 12)

(defparameter %ode::+param-erp1+ 13)

(defparameter %ode::+param-group2+ 256)

(defparameter %ode::+param-lo-stop2+ 256)

(defparameter %ode::+param-hi-stop2+ 257)

(defparameter %ode::+param-vel2+ 258)

(defparameter %ode::+param-lo-vel2+ 259)

(defparameter %ode::+param-hi-vel2+ 260)

(defparameter %ode::+param-f-max2+ 261)

(defparameter %ode::+param-fudge-factor2+ 262)

(defparameter %ode::+param-bounce2+ 263)

(defparameter %ode::+param-cfm2+ 264)

(defparameter %ode::+param-stop-erp2+ 265)

(defparameter %ode::+param-stop-cfm2+ 266)

(defparameter %ode::+param-suspension-erp2+ 267)

(defparameter %ode::+param-suspension-cfm2+ 268)

(defparameter %ode::+param-erp2+ 269)

(defparameter %ode::+param-group3+ 512)

(defparameter %ode::+param-lo-stop3+ 512)

(defparameter %ode::+param-hi-stop3+ 513)

(defparameter %ode::+param-vel3+ 514)

(defparameter %ode::+param-lo-vel3+ 515)

(defparameter %ode::+param-hi-vel3+ 516)

(defparameter %ode::+param-f-max3+ 517)

(defparameter %ode::+param-fudge-factor3+ 518)

(defparameter %ode::+param-bounce3+ 519)

(defparameter %ode::+param-cfm3+ 520)

(defparameter %ode::+param-stop-erp3+ 521)

(defparameter %ode::+param-stop-cfm3+ 522)

(defparameter %ode::+param-suspension-erp3+ 523)

(defparameter %ode::+param-suspension-cfm3+ 524)

(defparameter %ode::+param-erp3+ 525)

(defparameter %ode::+param-group+ 256)

(defparameter %ode::+sphere-class+ 0)

(defparameter %ode::+box-class+ 1)

(defparameter %ode::+capsule-class+ 2)

(defparameter %ode::+cylinder-class+ 3)

(defparameter %ode::+plane-class+ 4)

(defparameter %ode::+ray-class+ 5)

(defparameter %ode::+convex-class+ 6)

(defparameter %ode::+geom-transform-class+ 7)

(defparameter %ode::+tri-mesh-class+ 8)

(defparameter %ode::+heightfield-class+ 9)

(defparameter %ode::+first-space-class+ 10)

(defparameter %ode::+simple-space-class+ 10)

(defparameter %ode::+hash-space-class+ 11)

(defparameter %ode::+sweep-and-prune-space-class+ 12)

(defparameter %ode::+quad-tree-space-class+ 13)

(defparameter %ode::+last-space-class+ 13)

(defparameter %ode::+first-user-class+ 14)

(defparameter %ode::+last-user-class+ 17)

(defparameter %ode::+geom-num-classes+ 18)

(defparameter %ode::+tridatapreprocess-build--min+ 0)

(defparameter %ode::+tridatapreprocess-build-concave-edges+ 0)

(defparameter %ode::+tridatapreprocess-build-face-angles+ 1)

(defparameter %ode::+tridatapreprocess-build--max+ 2)

(defparameter %ode::+tridatapreprocess-face-angles-extra--min+ 0)

(defparameter %ode::+tridatapreprocess-face-angles-extra-byte-positive+ 0)

(defparameter %ode::+tridatapreprocess-face-angles-extra-byte-all+ 1)

(defparameter %ode::+tridatapreprocess-face-angles-extra-word-all+ 2)

(defparameter %ode::+tridatapreprocess-face-angles-extra--max+ 3)

(defparameter %ode::+tridatapreprocess-face-angles-extra--default+ 0)

(defparameter %ode::+trimeshdata--min+ 0)

(defparameter %ode::+trimeshdata-face-normals+ 0)

(defparameter %ode::+trimeshdata-use-flags+ 1)

(defparameter %ode::+trimeshdata--max+ 2)

(defparameter %ode::+trimesh-face-normals+ 0)

(defparameter %ode::+transmission-parallel-axes+ 0)

(defparameter %ode::+transmission-intersecting-axes+ 1)

(defparameter %ode::+transmission-chain-drive+ 2)

(defparameter %ode::+d-err-unknown+ 0)

(defparameter %ode::+d-err-iassert+ 1)

(defparameter %ode::+d-err-uassert+ 2)

(defparameter %ode::+d-err-lcp+ 3)

(cffi:defctype %ode::dsizeint :unsigned-long)

(declaim (inline %ode::alloc))

(cffi:defcfun ("dAlloc" %ode::alloc)
              (claw-utils:claw-pointer :void)
              (%ode::size %ode::dsizeint))

(declaim (inline %ode::allocate-ode-data-for-thread))

(cffi:defcfun ("dAllocateODEDataForThread"
               %ode::allocate-ode-data-for-thread)
              :int
              (%ode::ui-allocate-flags :unsigned-int))

(cffi:defcstruct (%ode::x-body :size 0))

(cffi:defctype %ode::body-id
               (claw-utils:claw-pointer (:struct %ode::x-body)))

(declaim (inline %ode::are-connected))

(cffi:defcfun ("dAreConnected" %ode::are-connected)
              :int
              (%ode::arg0 %ode::body-id)
              (%ode::arg1 %ode::body-id))

(declaim (inline %ode::are-connected-excluding))

(cffi:defcfun ("dAreConnectedExcluding"
               %ode::are-connected-excluding)
              :int
              (%ode::body1 %ode::body-id)
              (%ode::body2 %ode::body-id)
              (%ode::joint-type :int))

(cffi:defctype %ode::real :float)

(declaim (inline %ode::body-add-force))

(cffi:defcfun ("dBodyAddForce" %ode::body-add-force)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::fx %ode::real)
              (%ode::fy %ode::real)
              (%ode::fz %ode::real))

(declaim (inline %ode::body-add-force-at-pos))

(cffi:defcfun ("dBodyAddForceAtPos" %ode::body-add-force-at-pos)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::fx %ode::real)
              (%ode::fy %ode::real)
              (%ode::fz %ode::real)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real))

(declaim (inline %ode::body-add-force-at-rel-pos))

(cffi:defcfun ("dBodyAddForceAtRelPos"
               %ode::body-add-force-at-rel-pos)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::fx %ode::real)
              (%ode::fy %ode::real)
              (%ode::fz %ode::real)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real))

(declaim (inline %ode::body-add-rel-force))

(cffi:defcfun ("dBodyAddRelForce" %ode::body-add-rel-force)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::fx %ode::real)
              (%ode::fy %ode::real)
              (%ode::fz %ode::real))

(declaim (inline %ode::body-add-rel-force-at-pos))

(cffi:defcfun ("dBodyAddRelForceAtPos"
               %ode::body-add-rel-force-at-pos)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::fx %ode::real)
              (%ode::fy %ode::real)
              (%ode::fz %ode::real)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real))

(declaim (inline %ode::body-add-rel-force-at-rel-pos))

(cffi:defcfun ("dBodyAddRelForceAtRelPos"
               %ode::body-add-rel-force-at-rel-pos)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::fx %ode::real)
              (%ode::fy %ode::real)
              (%ode::fz %ode::real)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real))

(declaim (inline %ode::body-add-rel-torque))

(cffi:defcfun ("dBodyAddRelTorque" %ode::body-add-rel-torque)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::fx %ode::real)
              (%ode::fy %ode::real)
              (%ode::fz %ode::real))

(declaim (inline %ode::body-add-torque))

(cffi:defcfun ("dBodyAddTorque" %ode::body-add-torque)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::fx %ode::real)
              (%ode::fy %ode::real)
              (%ode::fz %ode::real))

(cffi:defctype %ode::vector3 (claw-utils:claw-array :float 4))

(declaim (inline %ode::body-copy-position))

(cffi:defcfun ("dBodyCopyPosition" %ode::body-copy-position)
              :void
              (%ode::body %ode::body-id)
              (%ode::pos %ode::vector3))

(cffi:defctype %ode::quaternion (claw-utils:claw-array :float 4))

(declaim (inline %ode::body-copy-quaternion))

(cffi:defcfun ("dBodyCopyQuaternion" %ode::body-copy-quaternion)
              :void
              (%ode::body %ode::body-id)
              (%ode::quat %ode::quaternion))

(cffi:defctype %ode::matrix3 (claw-utils:claw-array :float 12))

(declaim (inline %ode::body-copy-rotation))

(cffi:defcfun ("dBodyCopyRotation" %ode::body-copy-rotation)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::r %ode::matrix3))

(cffi:defcstruct (%ode::x-world :size 0))

(cffi:defctype %ode::world-id
               (claw-utils:claw-pointer (:struct %ode::x-world)))

(declaim (inline %ode::body-create))

(cffi:defcfun ("dBodyCreate" %ode::body-create)
              %ode::body-id
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::body-destroy))

(cffi:defcfun ("dBodyDestroy" %ode::body-destroy)
              :void
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-disable))

(cffi:defcfun ("dBodyDisable" %ode::body-disable)
              :void
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-enable))

(cffi:defcfun ("dBodyEnable" %ode::body-enable)
              :void
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-angular-damping))

(cffi:defcfun ("dBodyGetAngularDamping"
               %ode::body-get-angular-damping)
              %ode::real
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-get-angular-damping-threshold))

(cffi:defcfun ("dBodyGetAngularDampingThreshold"
               %ode::body-get-angular-damping-threshold)
              %ode::real
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-get-angular-vel))

(cffi:defcfun ("dBodyGetAngularVel" %ode::body-get-angular-vel)
              (claw-utils:claw-pointer %ode::real)
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-auto-disable-angular-threshold))

(cffi:defcfun ("dBodyGetAutoDisableAngularThreshold"
               %ode::body-get-auto-disable-angular-threshold)
              %ode::real
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-auto-disable-average-samples-count))

(cffi:defcfun ("dBodyGetAutoDisableAverageSamplesCount"
               %ode::body-get-auto-disable-average-samples-count)
              :int
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-auto-disable-flag))

(cffi:defcfun ("dBodyGetAutoDisableFlag"
               %ode::body-get-auto-disable-flag)
              :int
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-auto-disable-linear-threshold))

(cffi:defcfun ("dBodyGetAutoDisableLinearThreshold"
               %ode::body-get-auto-disable-linear-threshold)
              %ode::real
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-auto-disable-steps))

(cffi:defcfun ("dBodyGetAutoDisableSteps"
               %ode::body-get-auto-disable-steps)
              :int
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-auto-disable-time))

(cffi:defcfun ("dBodyGetAutoDisableTime"
               %ode::body-get-auto-disable-time)
              %ode::real
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-data))

(cffi:defcfun ("dBodyGetData" %ode::body-get-data)
              (claw-utils:claw-pointer :void)
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-finite-rotation-axis))

(cffi:defcfun ("dBodyGetFiniteRotationAxis"
               %ode::body-get-finite-rotation-axis)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::body-get-finite-rotation-mode))

(cffi:defcfun ("dBodyGetFiniteRotationMode"
               %ode::body-get-finite-rotation-mode)
              :int
              (%ode::arg0 %ode::body-id))

(cffi:defcstruct (%ode::x-geom :size 0))

(cffi:defctype %ode::geom-id
               (claw-utils:claw-pointer (:struct %ode::x-geom)))

(declaim (inline %ode::body-get-first-geom))

(cffi:defcfun ("dBodyGetFirstGeom" %ode::body-get-first-geom)
              %ode::geom-id
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-get-force))

(cffi:defcfun ("dBodyGetForce" %ode::body-get-force)
              (claw-utils:claw-pointer %ode::real)
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-gravity-mode))

(cffi:defcfun ("dBodyGetGravityMode" %ode::body-get-gravity-mode)
              :int
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-get-gyroscopic-mode))

(cffi:defcfun ("dBodyGetGyroscopicMode"
               %ode::body-get-gyroscopic-mode)
              :int
              (%ode::b %ode::body-id))

(cffi:defcstruct (%ode::x-joint :size 0))

(cffi:defctype %ode::joint-id
               (claw-utils:claw-pointer (:struct %ode::x-joint)))

(declaim (inline %ode::body-get-joint))

(cffi:defcfun ("dBodyGetJoint" %ode::body-get-joint)
              %ode::joint-id
              (%ode::arg0 %ode::body-id)
              (%ode::index :int))

(declaim (inline %ode::body-get-linear-damping))

(cffi:defcfun ("dBodyGetLinearDamping" %ode::body-get-linear-damping)
              %ode::real
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-get-linear-damping-threshold))

(cffi:defcfun ("dBodyGetLinearDampingThreshold"
               %ode::body-get-linear-damping-threshold)
              %ode::real
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-get-linear-vel))

(cffi:defcfun ("dBodyGetLinearVel" %ode::body-get-linear-vel)
              (claw-utils:claw-pointer %ode::real)
              (%ode::arg0 %ode::body-id))

(cffi:defcstruct (%ode::mass :size 68)
                 (%ode::mass %ode::real :offset 0)
                 (%ode::c %ode::vector3 :offset 4)
                 (%ode::i %ode::matrix3 :offset 20))

(cffi:defctype %ode::mass (:struct %ode::mass))

(declaim (inline %ode::body-get-mass))

(cffi:defcfun ("dBodyGetMass" %ode::body-get-mass)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::mass (claw-utils:claw-pointer %ode::mass)))

(declaim (inline %ode::body-get-max-angular-speed))

(cffi:defcfun ("dBodyGetMaxAngularSpeed"
               %ode::body-get-max-angular-speed)
              %ode::real
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-get-next-geom))

(cffi:defcfun ("dBodyGetNextGeom" %ode::body-get-next-geom)
              %ode::geom-id
              (%ode::g %ode::geom-id))

(declaim (inline %ode::body-get-num-joints))

(cffi:defcfun ("dBodyGetNumJoints" %ode::body-get-num-joints)
              :int
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-get-point-vel))

(cffi:defcfun ("dBodyGetPointVel" %ode::body-get-point-vel)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(declaim (inline %ode::body-get-pos-rel-point))

(cffi:defcfun ("dBodyGetPosRelPoint" %ode::body-get-pos-rel-point)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(declaim (inline %ode::body-get-position))

(cffi:defcfun ("dBodyGetPosition" %ode::body-get-position)
              (claw-utils:claw-pointer %ode::real)
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-quaternion))

(cffi:defcfun ("dBodyGetQuaternion" %ode::body-get-quaternion)
              (claw-utils:claw-pointer %ode::real)
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-rel-point-pos))

(cffi:defcfun ("dBodyGetRelPointPos" %ode::body-get-rel-point-pos)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(declaim (inline %ode::body-get-rel-point-vel))

(cffi:defcfun ("dBodyGetRelPointVel" %ode::body-get-rel-point-vel)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(declaim (inline %ode::body-get-rotation))

(cffi:defcfun ("dBodyGetRotation" %ode::body-get-rotation)
              (claw-utils:claw-pointer %ode::real)
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-torque))

(cffi:defcfun ("dBodyGetTorque" %ode::body-get-torque)
              (claw-utils:claw-pointer %ode::real)
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-get-world))

(cffi:defcfun ("dBodyGetWorld" %ode::body-get-world)
              %ode::world-id
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-is-enabled))

(cffi:defcfun ("dBodyIsEnabled" %ode::body-is-enabled)
              :int
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-is-kinematic))

(cffi:defcfun ("dBodyIsKinematic" %ode::body-is-kinematic)
              :int
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-set-angular-damping))

(cffi:defcfun ("dBodySetAngularDamping"
               %ode::body-set-angular-damping)
              :void
              (%ode::b %ode::body-id)
              (%ode::scale %ode::real))

(declaim (inline %ode::body-set-angular-damping-threshold))

(cffi:defcfun ("dBodySetAngularDampingThreshold"
               %ode::body-set-angular-damping-threshold)
              :void
              (%ode::b %ode::body-id)
              (%ode::threshold %ode::real))

(declaim (inline %ode::body-set-angular-vel))

(cffi:defcfun ("dBodySetAngularVel" %ode::body-set-angular-vel)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::body-set-auto-disable-angular-threshold))

(cffi:defcfun ("dBodySetAutoDisableAngularThreshold"
               %ode::body-set-auto-disable-angular-threshold)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::angular-average-threshold %ode::real))

(declaim (inline %ode::body-set-auto-disable-average-samples-count))

(cffi:defcfun ("dBodySetAutoDisableAverageSamplesCount"
               %ode::body-set-auto-disable-average-samples-count)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::average-samples-count :unsigned-int))

(declaim (inline %ode::body-set-auto-disable-defaults))

(cffi:defcfun ("dBodySetAutoDisableDefaults"
               %ode::body-set-auto-disable-defaults)
              :void
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-set-auto-disable-flag))

(cffi:defcfun ("dBodySetAutoDisableFlag"
               %ode::body-set-auto-disable-flag)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::do-auto-disable :int))

(declaim (inline %ode::body-set-auto-disable-linear-threshold))

(cffi:defcfun ("dBodySetAutoDisableLinearThreshold"
               %ode::body-set-auto-disable-linear-threshold)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::linear-average-threshold %ode::real))

(declaim (inline %ode::body-set-auto-disable-steps))

(cffi:defcfun ("dBodySetAutoDisableSteps"
               %ode::body-set-auto-disable-steps)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::steps :int))

(declaim (inline %ode::body-set-auto-disable-time))

(cffi:defcfun ("dBodySetAutoDisableTime"
               %ode::body-set-auto-disable-time)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::time %ode::real))

(declaim (inline %ode::body-set-damping))

(cffi:defcfun ("dBodySetDamping" %ode::body-set-damping)
              :void
              (%ode::b %ode::body-id)
              (%ode::linear-scale %ode::real)
              (%ode::angular-scale %ode::real))

(declaim (inline %ode::body-set-damping-defaults))

(cffi:defcfun ("dBodySetDampingDefaults"
               %ode::body-set-damping-defaults)
              :void
              (%ode::b %ode::body-id))

(declaim (inline %ode::body-set-data))

(cffi:defcfun ("dBodySetData" %ode::body-set-data)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::data (claw-utils:claw-pointer :void)))

(declaim (inline %ode::body-set-dynamic))

(cffi:defcfun ("dBodySetDynamic" %ode::body-set-dynamic)
              :void
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-set-finite-rotation-axis))

(cffi:defcfun ("dBodySetFiniteRotationAxis"
               %ode::body-set-finite-rotation-axis)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::body-set-finite-rotation-mode))

(cffi:defcfun ("dBodySetFiniteRotationMode"
               %ode::body-set-finite-rotation-mode)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::mode :int))

(declaim (inline %ode::body-set-force))

(cffi:defcfun ("dBodySetForce" %ode::body-set-force)
              :void
              (%ode::b %ode::body-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::body-set-gravity-mode))

(cffi:defcfun ("dBodySetGravityMode" %ode::body-set-gravity-mode)
              :void
              (%ode::b %ode::body-id)
              (%ode::mode :int))

(declaim (inline %ode::body-set-gyroscopic-mode))

(cffi:defcfun ("dBodySetGyroscopicMode"
               %ode::body-set-gyroscopic-mode)
              :void
              (%ode::b %ode::body-id)
              (%ode::enabled :int))

(declaim (inline %ode::body-set-kinematic))

(cffi:defcfun ("dBodySetKinematic" %ode::body-set-kinematic)
              :void
              (%ode::arg0 %ode::body-id))

(declaim (inline %ode::body-set-linear-damping))

(cffi:defcfun ("dBodySetLinearDamping" %ode::body-set-linear-damping)
              :void
              (%ode::b %ode::body-id)
              (%ode::scale %ode::real))

(declaim (inline %ode::body-set-linear-damping-threshold))

(cffi:defcfun ("dBodySetLinearDampingThreshold"
               %ode::body-set-linear-damping-threshold)
              :void
              (%ode::b %ode::body-id)
              (%ode::threshold %ode::real))

(declaim (inline %ode::body-set-linear-vel))

(cffi:defcfun ("dBodySetLinearVel" %ode::body-set-linear-vel)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::body-set-mass))

(cffi:defcfun ("dBodySetMass" %ode::body-set-mass)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::mass (claw-utils:claw-pointer %ode::mass)))

(declaim (inline %ode::body-set-max-angular-speed))

(cffi:defcfun ("dBodySetMaxAngularSpeed"
               %ode::body-set-max-angular-speed)
              :void
              (%ode::b %ode::body-id)
              (%ode::max-speed %ode::real))

(declaim (inline %ode::body-set-moved-callback))

(cffi:defcfun ("dBodySetMovedCallback" %ode::body-set-moved-callback)
              :void
              (%ode::b %ode::body-id)
              (%ode::callback (claw-utils:claw-pointer :void)))

(declaim (inline %ode::body-set-position))

(cffi:defcfun ("dBodySetPosition" %ode::body-set-position)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::body-set-quaternion))

(cffi:defcfun ("dBodySetQuaternion" %ode::body-set-quaternion)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::q %ode::quaternion))

(declaim (inline %ode::body-set-rotation))

(cffi:defcfun ("dBodySetRotation" %ode::body-set-rotation)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::r %ode::matrix3))

(declaim (inline %ode::body-set-torque))

(cffi:defcfun ("dBodySetTorque" %ode::body-set-torque)
              :void
              (%ode::b %ode::body-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::body-vector-from-world))

(cffi:defcfun ("dBodyVectorFromWorld" %ode::body-vector-from-world)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(declaim (inline %ode::body-vector-to-world))

(cffi:defcfun ("dBodyVectorToWorld" %ode::body-vector-to-world)
              :void
              (%ode::arg0 %ode::body-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(cffi:defcstruct (%ode::contact-geom :size 64)
                 (%ode::pos %ode::vector3 :offset 0)
                 (%ode::normal %ode::vector3 :offset 16)
                 (%ode::depth %ode::real :offset 32)
                 (%ode::g1 %ode::geom-id :offset 40)
                 (%ode::g2 %ode::geom-id :offset 48)
                 (%ode::side1 :int :offset 56)
                 (%ode::side2 :int :offset 60))

(cffi:defctype %ode::contact-geom (:struct %ode::contact-geom))

(declaim (inline %ode::box-box))

(cffi:defcfun ("dBoxBox" %ode::box-box)
              :int
              (%ode::p1 %ode::vector3)
              (%ode::r1 %ode::matrix3)
              (%ode::side1 %ode::vector3)
              (%ode::p2 %ode::vector3)
              (%ode::r2 %ode::matrix3)
              (%ode::side2 %ode::vector3)
              (%ode::normal %ode::vector3)
              (%ode::depth (claw-utils:claw-pointer %ode::real))
              (%ode::return-code (claw-utils:claw-pointer :int))
              (%ode::flags :int)
              (%ode::contact
               (claw-utils:claw-pointer %ode::contact-geom))
              (%ode::skip :int))

(declaim (inline %ode::box-touches-box))

(cffi:defcfun ("dBoxTouchesBox" %ode::box-touches-box)
              :int
              (%ode::%p1 %ode::vector3)
              (%ode::r1 %ode::matrix3)
              (%ode::side1 %ode::vector3)
              (%ode::%p2 %ode::vector3)
              (%ode::r2 %ode::matrix3)
              (%ode::side2 %ode::vector3))

(declaim (inline %ode::check-configuration))

(cffi:defcfun ("dCheckConfiguration" %ode::check-configuration)
              :int
              (%ode::token claw-utils:claw-string))

(declaim (inline %ode::cleanup-ode-all-data-for-thread))

(cffi:defcfun ("dCleanupODEAllDataForThread"
               %ode::cleanup-ode-all-data-for-thread)
              :void
              &rest)

(declaim (inline %ode::clear-upper-triangle))

(cffi:defcfun ("dClearUpperTriangle" %ode::clear-upper-triangle)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::close-ode))

(cffi:defcfun ("dCloseODE" %ode::close-ode) :void)

(declaim (inline %ode::closest-line-segment-points))

(cffi:defcfun ("dClosestLineSegmentPoints"
               %ode::closest-line-segment-points)
              :void
              (%ode::a1 %ode::vector3)
              (%ode::a2 %ode::vector3)
              (%ode::b1 %ode::vector3)
              (%ode::b2 %ode::vector3)
              (%ode::cp1 %ode::vector3)
              (%ode::cp2 %ode::vector3))

(declaim (inline %ode::collide))

(cffi:defcfun ("dCollide" %ode::collide)
              :int
              (%ode::o1 %ode::geom-id)
              (%ode::o2 %ode::geom-id)
              (%ode::flags :int)
              (%ode::contact
               (claw-utils:claw-pointer %ode::contact-geom))
              (%ode::skip :int))

(declaim (inline %ode::connecting-joint))

(cffi:defcfun ("dConnectingJoint" %ode::connecting-joint)
              %ode::joint-id
              (%ode::arg0 %ode::body-id)
              (%ode::arg1 %ode::body-id))

(declaim (inline %ode::connecting-joint-list))

(cffi:defcfun ("dConnectingJointList" %ode::connecting-joint-list)
              :int
              (%ode::arg0 %ode::body-id)
              (%ode::arg1 %ode::body-id)
              (%ode::arg2 (claw-utils:claw-pointer %ode::joint-id)))

(cffi:defcstruct (%ode::x-cooperative :size 0))

(cffi:defctype %ode::cooperative-id
               (claw-utils:claw-pointer
                (:struct %ode::x-cooperative)))

(cffi:defctype %ode::mutex-group-alloc-function :void)

(cffi:defctype %ode::mutex-group-free-function :void)

(cffi:defctype %ode::mutex-group-mutex-lock-function :void)

(cffi:defctype %ode::mutex-group-mutex-unlock-function :void)

(cffi:defctype %ode::threaded-call-wait-alloc-function :void)

(cffi:defctype %ode::threaded-call-wait-reset-function :void)

(cffi:defctype %ode::threaded-call-wait-free-function :void)

(cffi:defctype %ode::threaded-call-post-function :void)

(cffi:defctype %ode::threaded-call-dependencies-count-alter-function
               :void)

(cffi:defctype %ode::threaded-call-wait-function :void)

(cffi:defctype %ode::threading-impl-thread-count-retrieve-function
               :void)

(cffi:defctype %ode::threading-impl-resources-for-calls-preallocate-function
               :void)

(cffi:defcstruct (%ode::x-threading-functions-info :size 104)
                 (%ode::struct-size :unsigned-int :offset 0)
                 (%ode::alloc-mutex-group
                  (claw-utils:claw-pointer
                   %ode::mutex-group-alloc-function)
                  :offset 8)
                 (%ode::free-mutex-group
                  (claw-utils:claw-pointer
                   %ode::mutex-group-free-function)
                  :offset 16)
                 (%ode::lock-group-mutex
                  (claw-utils:claw-pointer
                   %ode::mutex-group-mutex-lock-function)
                  :offset 24)
                 (%ode::unlock-group-mutex
                  (claw-utils:claw-pointer
                   %ode::mutex-group-mutex-unlock-function)
                  :offset 32)
                 (%ode::alloc-call-wait
                  (claw-utils:claw-pointer
                   %ode::threaded-call-wait-alloc-function)
                  :offset 40)
                 (%ode::reset-call-wait
                  (claw-utils:claw-pointer
                   %ode::threaded-call-wait-reset-function)
                  :offset 48)
                 (%ode::free-call-wait
                  (claw-utils:claw-pointer
                   %ode::threaded-call-wait-free-function)
                  :offset 56)
                 (%ode::post-call
                  (claw-utils:claw-pointer
                   %ode::threaded-call-post-function)
                  :offset 64)
                 (%ode::alter-call-dependencies-count
                  (claw-utils:claw-pointer
                   %ode::threaded-call-dependencies-count-alter-function)
                  :offset 72)
                 (%ode::wait-call
                  (claw-utils:claw-pointer
                   %ode::threaded-call-wait-function)
                  :offset 80)
                 (%ode::retrieve-thread-count
                  (claw-utils:claw-pointer
                   %ode::threading-impl-thread-count-retrieve-function)
                  :offset 88)
                 (%ode::preallocate-resources-for-calls
                  (claw-utils:claw-pointer
                   %ode::threading-impl-resources-for-calls-preallocate-function)
                  :offset 96))

(cffi:defctype %ode::threading-functions-info
               (:struct %ode::x-threading-functions-info))

(cffi:defcstruct (%ode::x-threading-implementation :size 0))

(cffi:defctype %ode::threading-implementation-id
               (claw-utils:claw-pointer
                (:struct %ode::x-threading-implementation)))

(declaim (inline %ode::cooperative-create))

(cffi:defcfun ("dCooperativeCreate" %ode::cooperative-create)
              %ode::cooperative-id
              (%ode::function-info
               (claw-utils:claw-pointer
                %ode::threading-functions-info))
              (%ode::threading-impl
               %ode::threading-implementation-id))

(declaim (inline %ode::cooperative-destroy))

(cffi:defcfun ("dCooperativeDestroy" %ode::cooperative-destroy)
              :void
              (%ode::cooperative %ode::cooperative-id))

(cffi:defcstruct (%ode::x-resource-container :size 0))

(cffi:defctype %ode::resource-container-id
               (claw-utils:claw-pointer
                (:struct %ode::x-resource-container)))

(declaim (inline %ode::cooperatively-factor-ldlt))

(cffi:defcfun ("dCooperativelyFactorLDLT"
               %ode::cooperatively-factor-ldlt)
              :void
              (%ode::resources %ode::resource-container-id)
              (%ode::allowed-thread-count :unsigned-int)
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::d (claw-utils:claw-pointer %ode::real))
              (%ode::row-count :unsigned-int)
              (%ode::row-skip :unsigned-int))

(declaim (inline %ode::cooperatively-scale-vector))

(cffi:defcfun ("dCooperativelyScaleVector"
               %ode::cooperatively-scale-vector)
              :void
              (%ode::resources %ode::resource-container-id)
              (%ode::allowed-thread-count :unsigned-int)
              (%ode::data-vector
               (claw-utils:claw-pointer %ode::real))
              (%ode::scale-vector
               (claw-utils:claw-pointer %ode::real))
              (%ode::element-count :unsigned-int))

(declaim (inline %ode::cooperatively-solve-l1straight))

(cffi:defcfun ("dCooperativelySolveL1Straight"
               %ode::cooperatively-solve-l1straight)
              :void
              (%ode::resources %ode::resource-container-id)
              (%ode::allowed-thread-count :unsigned-int)
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::row-count :unsigned-int)
              (%ode::row-skip :unsigned-int))

(declaim (inline %ode::cooperatively-solve-l1transposed))

(cffi:defcfun ("dCooperativelySolveL1Transposed"
               %ode::cooperatively-solve-l1transposed)
              :void
              (%ode::resources %ode::resource-container-id)
              (%ode::allowed-thread-count :unsigned-int)
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::row-count :unsigned-int)
              (%ode::row-skip :unsigned-int))

(declaim (inline %ode::cooperatively-solve-ldlt))

(cffi:defcfun ("dCooperativelySolveLDLT"
               %ode::cooperatively-solve-ldlt)
              :void
              (%ode::resources %ode::resource-container-id)
              (%ode::allowed-thread-count :unsigned-int)
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::d (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::row-count :unsigned-int)
              (%ode::row-skip :unsigned-int))

(cffi:defcstruct (%ode::x-space :size 0))

(cffi:defctype %ode::space-id
               (claw-utils:claw-pointer (:struct %ode::x-space)))

(declaim (inline %ode::create-box))

(cffi:defcfun ("dCreateBox" %ode::create-box)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::lx %ode::real)
              (%ode::ly %ode::real)
              (%ode::lz %ode::real))

(declaim (inline %ode::create-capsule))

(cffi:defcfun ("dCreateCapsule" %ode::create-capsule)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::radius %ode::real)
              (%ode::length %ode::real))

(declaim (inline %ode::create-convex))

(cffi:defcfun ("dCreateConvex" %ode::create-convex)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::%planes (claw-utils:claw-pointer %ode::real))
              (%ode::%planecount :unsigned-int)
              (%ode::%points (claw-utils:claw-pointer %ode::real))
              (%ode::%pointcount :unsigned-int)
              (%ode::%polygons
               (claw-utils:claw-pointer :unsigned-int)))

(declaim (inline %ode::create-cylinder))

(cffi:defcfun ("dCreateCylinder" %ode::create-cylinder)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::radius %ode::real)
              (%ode::length %ode::real))

(declaim (inline %ode::create-geom))

(cffi:defcfun ("dCreateGeom" %ode::create-geom)
              %ode::geom-id
              (%ode::classnum :int))

(cffi:defctype %ode::get-collider-fn-fn :void)

(cffi:defctype %ode::get-aabb-fn :void)

(cffi:defctype %ode::aabb-test-fn :void)

(cffi:defctype %ode::geom-dtor-fn :void)

(cffi:defcstruct (%ode::geom-class :size 40)
                 (%ode::bytes :int :offset 0)
                 (%ode::collider
                  (claw-utils:claw-pointer %ode::get-collider-fn-fn)
                  :offset 8)
                 (%ode::aabb
                  (claw-utils:claw-pointer %ode::get-aabb-fn) :offset
                  16)
                 (%ode::aabb-test
                  (claw-utils:claw-pointer %ode::aabb-test-fn)
                  :offset 24)
                 (%ode::dtor
                  (claw-utils:claw-pointer %ode::geom-dtor-fn)
                  :offset 32))

(cffi:defctype %ode::geom-class (:struct %ode::geom-class))

(declaim (inline %ode::create-geom-class))

(cffi:defcfun ("dCreateGeomClass" %ode::create-geom-class)
              :int
              (%ode::classptr
               (claw-utils:claw-pointer %ode::geom-class)))

(declaim (inline %ode::create-geom-transform))

(cffi:defcfun ("dCreateGeomTransform" %ode::create-geom-transform)
              %ode::geom-id
              (%ode::space %ode::space-id))

(cffi:defcstruct (%ode::x-heightfield-data :size 0))

(cffi:defctype %ode::heightfield-data-id
               (claw-utils:claw-pointer
                (:struct %ode::x-heightfield-data)))

(declaim (inline %ode::create-heightfield))

(cffi:defcfun ("dCreateHeightfield" %ode::create-heightfield)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::data %ode::heightfield-data-id)
              (%ode::b-placeable :int))

(declaim (inline %ode::create-plane))

(cffi:defcfun ("dCreatePlane" %ode::create-plane)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::a %ode::real)
              (%ode::b %ode::real)
              (%ode::c %ode::real)
              (%ode::d %ode::real))

(declaim (inline %ode::create-ray))

(cffi:defcfun ("dCreateRay" %ode::create-ray)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::length %ode::real))

(declaim (inline %ode::create-sphere))

(cffi:defcfun ("dCreateSphere" %ode::create-sphere)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::radius %ode::real))

(cffi:defcstruct (%ode::x-tri-mesh-data :size 0))

(cffi:defctype %ode::tri-mesh-data-id
               (claw-utils:claw-pointer
                (:struct %ode::x-tri-mesh-data)))

(cffi:defctype %ode::tri-callback :void)

(cffi:defctype %ode::tri-array-callback :void)

(cffi:defctype %ode::tri-ray-callback :void)

(declaim (inline %ode::create-tri-mesh))

(cffi:defcfun ("dCreateTriMesh" %ode::create-tri-mesh)
              %ode::geom-id
              (%ode::space %ode::space-id)
              (%ode::data %ode::tri-mesh-data-id)
              (%ode::callback
               (claw-utils:claw-pointer %ode::tri-callback))
              (%ode::array-callback
               (claw-utils:claw-pointer %ode::tri-array-callback))
              (%ode::ray-callback
               (claw-utils:claw-pointer %ode::tri-ray-callback)))

(declaim (inline %ode::d-qfrom-w))

(cffi:defcfun ("dDQfromW" %ode::d-qfrom-w)
              :void
              (%ode::dq (claw-utils:claw-array %ode::real 4))
              (%ode::w %ode::vector3)
              (%ode::q %ode::quaternion))

(declaim (inline %ode::debug))

(cffi:defcfun ("dDebug" %ode::debug)
              :void
              (%ode::num :int)
              (%ode::msg claw-utils:claw-string)
              &rest)

(declaim (inline %ode::dot))

(cffi:defcfun ("dDot" %ode::dot)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::error))

(cffi:defcfun ("dError" %ode::error)
              :void
              (%ode::num :int)
              (%ode::msg claw-utils:claw-string)
              &rest)

(cffi:defcstruct (%ode::x-resource-requirements :size 0))

(cffi:defctype %ode::resource-requirements-id
               (claw-utils:claw-pointer
                (:struct %ode::x-resource-requirements)))

(declaim (inline
          %ode::estimate-cooperatively-factor-ldlt-resource-requirements))

(cffi:defcfun ("dEstimateCooperativelyFactorLDLTResourceRequirements"
               %ode::estimate-cooperatively-factor-ldlt-resource-requirements)
              :void
              (%ode::requirements %ode::resource-requirements-id)
              (%ode::maximal-allowed-thread-count :unsigned-int)
              (%ode::maximal-row-count :unsigned-int))

(declaim (inline
          %ode::estimate-cooperatively-scale-vector-resource-requirements))

(cffi:defcfun ("dEstimateCooperativelyScaleVectorResourceRequirements"
               %ode::estimate-cooperatively-scale-vector-resource-requirements)
              :void
              (%ode::requirements %ode::resource-requirements-id)
              (%ode::maximal-allowed-thread-count :unsigned-int)
              (%ode::maximal-element-count :unsigned-int))

(declaim (inline
          %ode::estimate-cooperatively-solve-l1straight-resource-requirements))

(cffi:defcfun ("dEstimateCooperativelySolveL1StraightResourceRequirements"
               %ode::estimate-cooperatively-solve-l1straight-resource-requirements)
              :void
              (%ode::requirements %ode::resource-requirements-id)
              (%ode::maximal-allowed-thread-count :unsigned-int)
              (%ode::maximal-row-count :unsigned-int))

(declaim (inline
          %ode::estimate-cooperatively-solve-l1transposed-resource-requirements))

(cffi:defcfun ("dEstimateCooperativelySolveL1TransposedResourceRequirements"
               %ode::estimate-cooperatively-solve-l1transposed-resource-requirements)
              :void
              (%ode::requirements %ode::resource-requirements-id)
              (%ode::maximal-allowed-thread-count :unsigned-int)
              (%ode::maximal-row-count :unsigned-int))

(declaim (inline
          %ode::estimate-cooperatively-solve-ldlt-resource-requirements))

(cffi:defcfun ("dEstimateCooperativelySolveLDLTResourceRequirements"
               %ode::estimate-cooperatively-solve-ldlt-resource-requirements)
              :void
              (%ode::requirements %ode::resource-requirements-id)
              (%ode::maximal-allowed-thread-count :unsigned-int)
              (%ode::maximal-row-count :unsigned-int))

(cffi:defctype %ode::thread-ready-to-serve-callback :void)

(declaim (inline
          %ode::external-threading-serve-multi-threaded-implementation))

(cffi:defcfun ("dExternalThreadingServeMultiThreadedImplementation"
               %ode::external-threading-serve-multi-threaded-implementation)
              :void
              (%ode::impl %ode::threading-implementation-id)
              (%ode::readiness-callback
               (claw-utils:claw-pointer
                %ode::thread-ready-to-serve-callback))
              (%ode::callback-context
               (claw-utils:claw-pointer :void)))

(declaim (inline %ode::factor-cholesky))

(cffi:defcfun ("dFactorCholesky" %ode::factor-cholesky)
              :int
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::factor-ldlt))

(cffi:defcfun ("dFactorLDLT" %ode::factor-ldlt)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::d (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::nskip :int))

(declaim (inline %ode::free))

(cffi:defcfun ("dFree" %ode::free)
              :void
              (%ode::ptr (claw-utils:claw-pointer :void))
              (%ode::size %ode::dsizeint))

(declaim (inline %ode::geom-box-get-lengths))

(cffi:defcfun ("dGeomBoxGetLengths" %ode::geom-box-get-lengths)
              :void
              (%ode::box %ode::geom-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::geom-box-point-depth))

(cffi:defcfun ("dGeomBoxPointDepth" %ode::geom-box-point-depth)
              %ode::real
              (%ode::box %ode::geom-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::geom-box-set-lengths))

(cffi:defcfun ("dGeomBoxSetLengths" %ode::geom-box-set-lengths)
              :void
              (%ode::box %ode::geom-id)
              (%ode::lx %ode::real)
              (%ode::ly %ode::real)
              (%ode::lz %ode::real))

(declaim (inline %ode::geom-capsule-get-params))

(cffi:defcfun ("dGeomCapsuleGetParams" %ode::geom-capsule-get-params)
              :void
              (%ode::ccylinder %ode::geom-id)
              (%ode::radius (claw-utils:claw-pointer %ode::real))
              (%ode::length (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::geom-capsule-point-depth))

(cffi:defcfun ("dGeomCapsulePointDepth"
               %ode::geom-capsule-point-depth)
              %ode::real
              (%ode::ccylinder %ode::geom-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::geom-capsule-set-params))

(cffi:defcfun ("dGeomCapsuleSetParams" %ode::geom-capsule-set-params)
              :void
              (%ode::ccylinder %ode::geom-id)
              (%ode::radius %ode::real)
              (%ode::length %ode::real))

(declaim (inline %ode::geom-clear-offset))

(cffi:defcfun ("dGeomClearOffset" %ode::geom-clear-offset)
              :void
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-copy-offset-position))

(cffi:defcfun ("dGeomCopyOffsetPosition"
               %ode::geom-copy-offset-position)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::pos %ode::vector3))

(declaim (inline %ode::geom-copy-offset-rotation))

(cffi:defcfun ("dGeomCopyOffsetRotation"
               %ode::geom-copy-offset-rotation)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::r %ode::matrix3))

(declaim (inline %ode::geom-copy-position))

(cffi:defcfun ("dGeomCopyPosition" %ode::geom-copy-position)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::pos %ode::vector3))

(declaim (inline %ode::geom-copy-rotation))

(cffi:defcfun ("dGeomCopyRotation" %ode::geom-copy-rotation)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::r %ode::matrix3))

(declaim (inline %ode::geom-cylinder-get-params))

(cffi:defcfun ("dGeomCylinderGetParams"
               %ode::geom-cylinder-get-params)
              :void
              (%ode::cylinder %ode::geom-id)
              (%ode::radius (claw-utils:claw-pointer %ode::real))
              (%ode::length (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::geom-cylinder-set-params))

(cffi:defcfun ("dGeomCylinderSetParams"
               %ode::geom-cylinder-set-params)
              :void
              (%ode::cylinder %ode::geom-id)
              (%ode::radius %ode::real)
              (%ode::length %ode::real))

(declaim (inline %ode::geom-destroy))

(cffi:defcfun ("dGeomDestroy" %ode::geom-destroy)
              :void
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-disable))

(cffi:defcfun ("dGeomDisable" %ode::geom-disable)
              :void
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-enable))

(cffi:defcfun ("dGeomEnable" %ode::geom-enable)
              :void
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-get-aabb))

(cffi:defcfun ("dGeomGetAABB" %ode::geom-get-aabb)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::aabb (claw-utils:claw-array %ode::real 6)))

(declaim (inline %ode::geom-get-body))

(cffi:defcfun ("dGeomGetBody" %ode::geom-get-body)
              %ode::body-id
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-get-body-next))

(cffi:defcfun ("dGeomGetBodyNext" %ode::geom-get-body-next)
              %ode::geom-id
              (%ode::arg0 %ode::geom-id))

(declaim (inline %ode::geom-get-category-bits))

(cffi:defcfun ("dGeomGetCategoryBits" %ode::geom-get-category-bits)
              :unsigned-long
              (%ode::arg0 %ode::geom-id))

(declaim (inline %ode::geom-get-class))

(cffi:defcfun ("dGeomGetClass" %ode::geom-get-class)
              :int
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-get-class-data))

(cffi:defcfun ("dGeomGetClassData" %ode::geom-get-class-data)
              (claw-utils:claw-pointer :void)
              (%ode::arg0 %ode::geom-id))

(declaim (inline %ode::geom-get-collide-bits))

(cffi:defcfun ("dGeomGetCollideBits" %ode::geom-get-collide-bits)
              :unsigned-long
              (%ode::arg0 %ode::geom-id))

(declaim (inline %ode::geom-get-data))

(cffi:defcfun ("dGeomGetData" %ode::geom-get-data)
              (claw-utils:claw-pointer :void)
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-get-offset-position))

(cffi:defcfun ("dGeomGetOffsetPosition"
               %ode::geom-get-offset-position)
              (claw-utils:claw-pointer %ode::real)
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-get-offset-quaternion))

(cffi:defcfun ("dGeomGetOffsetQuaternion"
               %ode::geom-get-offset-quaternion)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::result %ode::quaternion))

(declaim (inline %ode::geom-get-offset-rotation))

(cffi:defcfun ("dGeomGetOffsetRotation"
               %ode::geom-get-offset-rotation)
              (claw-utils:claw-pointer %ode::real)
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-get-pos-rel-point))

(cffi:defcfun ("dGeomGetPosRelPoint" %ode::geom-get-pos-rel-point)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(declaim (inline %ode::geom-get-position))

(cffi:defcfun ("dGeomGetPosition" %ode::geom-get-position)
              (claw-utils:claw-pointer %ode::real)
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-get-quaternion))

(cffi:defcfun ("dGeomGetQuaternion" %ode::geom-get-quaternion)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::result %ode::quaternion))

(declaim (inline %ode::geom-get-rel-point-pos))

(cffi:defcfun ("dGeomGetRelPointPos" %ode::geom-get-rel-point-pos)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(declaim (inline %ode::geom-get-rotation))

(cffi:defcfun ("dGeomGetRotation" %ode::geom-get-rotation)
              (claw-utils:claw-pointer %ode::real)
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-get-space))

(cffi:defcfun ("dGeomGetSpace" %ode::geom-get-space)
              %ode::space-id
              (%ode::arg0 %ode::geom-id))

(declaim (inline %ode::geom-heightfield-data-build-byte))

(cffi:defcfun ("dGeomHeightfieldDataBuildByte"
               %ode::geom-heightfield-data-build-byte)
              :void
              (%ode::d %ode::heightfield-data-id)
              (%ode::p-height-data
               (claw-utils:claw-pointer :unsigned-char))
              (%ode::b-copy-height-data :int)
              (%ode::width %ode::real)
              (%ode::depth %ode::real)
              (%ode::width-samples :int)
              (%ode::depth-samples :int)
              (%ode::scale %ode::real)
              (%ode::offset %ode::real)
              (%ode::thickness %ode::real)
              (%ode::b-wrap :int))

(cffi:defctype %ode::heightfield-get-height :void)

(declaim (inline %ode::geom-heightfield-data-build-callback))

(cffi:defcfun ("dGeomHeightfieldDataBuildCallback"
               %ode::geom-heightfield-data-build-callback)
              :void
              (%ode::d %ode::heightfield-data-id)
              (%ode::p-user-data (claw-utils:claw-pointer :void))
              (%ode::p-callback
               (claw-utils:claw-pointer
                %ode::heightfield-get-height))
              (%ode::width %ode::real)
              (%ode::depth %ode::real)
              (%ode::width-samples :int)
              (%ode::depth-samples :int)
              (%ode::scale %ode::real)
              (%ode::offset %ode::real)
              (%ode::thickness %ode::real)
              (%ode::b-wrap :int))

(declaim (inline %ode::geom-heightfield-data-build-double))

(cffi:defcfun ("dGeomHeightfieldDataBuildDouble"
               %ode::geom-heightfield-data-build-double)
              :void
              (%ode::d %ode::heightfield-data-id)
              (%ode::p-height-data (claw-utils:claw-pointer :double))
              (%ode::b-copy-height-data :int)
              (%ode::width %ode::real)
              (%ode::depth %ode::real)
              (%ode::width-samples :int)
              (%ode::depth-samples :int)
              (%ode::scale %ode::real)
              (%ode::offset %ode::real)
              (%ode::thickness %ode::real)
              (%ode::b-wrap :int))

(declaim (inline %ode::geom-heightfield-data-build-short))

(cffi:defcfun ("dGeomHeightfieldDataBuildShort"
               %ode::geom-heightfield-data-build-short)
              :void
              (%ode::d %ode::heightfield-data-id)
              (%ode::p-height-data (claw-utils:claw-pointer :short))
              (%ode::b-copy-height-data :int)
              (%ode::width %ode::real)
              (%ode::depth %ode::real)
              (%ode::width-samples :int)
              (%ode::depth-samples :int)
              (%ode::scale %ode::real)
              (%ode::offset %ode::real)
              (%ode::thickness %ode::real)
              (%ode::b-wrap :int))

(declaim (inline %ode::geom-heightfield-data-build-single))

(cffi:defcfun ("dGeomHeightfieldDataBuildSingle"
               %ode::geom-heightfield-data-build-single)
              :void
              (%ode::d %ode::heightfield-data-id)
              (%ode::p-height-data (claw-utils:claw-pointer :float))
              (%ode::b-copy-height-data :int)
              (%ode::width %ode::real)
              (%ode::depth %ode::real)
              (%ode::width-samples :int)
              (%ode::depth-samples :int)
              (%ode::scale %ode::real)
              (%ode::offset %ode::real)
              (%ode::thickness %ode::real)
              (%ode::b-wrap :int))

(declaim (inline %ode::geom-heightfield-data-create))

(cffi:defcfun ("dGeomHeightfieldDataCreate"
               %ode::geom-heightfield-data-create)
              %ode::heightfield-data-id)

(declaim (inline %ode::geom-heightfield-data-destroy))

(cffi:defcfun ("dGeomHeightfieldDataDestroy"
               %ode::geom-heightfield-data-destroy)
              :void
              (%ode::d %ode::heightfield-data-id))

(declaim (inline %ode::geom-heightfield-data-set-bounds))

(cffi:defcfun ("dGeomHeightfieldDataSetBounds"
               %ode::geom-heightfield-data-set-bounds)
              :void
              (%ode::d %ode::heightfield-data-id)
              (%ode::min-height %ode::real)
              (%ode::max-height %ode::real))

(declaim (inline %ode::geom-heightfield-get-heightfield-data))

(cffi:defcfun ("dGeomHeightfieldGetHeightfieldData"
               %ode::geom-heightfield-get-heightfield-data)
              %ode::heightfield-data-id
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-heightfield-set-heightfield-data))

(cffi:defcfun ("dGeomHeightfieldSetHeightfieldData"
               %ode::geom-heightfield-set-heightfield-data)
              :void
              (%ode::g %ode::geom-id)
              (%ode::d %ode::heightfield-data-id))

(declaim (inline %ode::geom-is-enabled))

(cffi:defcfun ("dGeomIsEnabled" %ode::geom-is-enabled)
              :int
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-is-offset))

(cffi:defcfun ("dGeomIsOffset" %ode::geom-is-offset)
              :int
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-is-space))

(cffi:defcfun ("dGeomIsSpace" %ode::geom-is-space)
              :int
              (%ode::geom %ode::geom-id))

(declaim (inline %ode::geom-low-level-control))

(cffi:defcfun ("dGeomLowLevelControl" %ode::geom-low-level-control)
              :int
              (%ode::geom %ode::geom-id)
              (%ode::control-class :int)
              (%ode::control-code :int)
              (%ode::data-value (claw-utils:claw-pointer :void))
              (%ode::data-size (claw-utils:claw-pointer :int)))

(declaim (inline %ode::geom-moved))

(cffi:defcfun ("dGeomMoved" %ode::geom-moved)
              :void
              (%ode::arg0 %ode::geom-id))

(cffi:defctype %ode::vector4 (claw-utils:claw-array :float 4))

(declaim (inline %ode::geom-plane-get-params))

(cffi:defcfun ("dGeomPlaneGetParams" %ode::geom-plane-get-params)
              :void
              (%ode::plane %ode::geom-id)
              (%ode::result %ode::vector4))

(declaim (inline %ode::geom-plane-point-depth))

(cffi:defcfun ("dGeomPlanePointDepth" %ode::geom-plane-point-depth)
              %ode::real
              (%ode::plane %ode::geom-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::geom-plane-set-params))

(cffi:defcfun ("dGeomPlaneSetParams" %ode::geom-plane-set-params)
              :void
              (%ode::plane %ode::geom-id)
              (%ode::a %ode::real)
              (%ode::b %ode::real)
              (%ode::c %ode::real)
              (%ode::d %ode::real))

(declaim (inline %ode::geom-ray-get))

(cffi:defcfun ("dGeomRayGet" %ode::geom-ray-get)
              :void
              (%ode::ray %ode::geom-id)
              (%ode::start %ode::vector3)
              (%ode::dir %ode::vector3))

(declaim (inline %ode::geom-ray-get-backface-cull))

(cffi:defcfun ("dGeomRayGetBackfaceCull"
               %ode::geom-ray-get-backface-cull)
              :int
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-ray-get-closest-hit))

(cffi:defcfun ("dGeomRayGetClosestHit"
               %ode::geom-ray-get-closest-hit)
              :int
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-ray-get-first-contact))

(cffi:defcfun ("dGeomRayGetFirstContact"
               %ode::geom-ray-get-first-contact)
              :int
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-ray-get-length))

(cffi:defcfun ("dGeomRayGetLength" %ode::geom-ray-get-length)
              %ode::real
              (%ode::ray %ode::geom-id))

(declaim (inline %ode::geom-ray-get-params))

(cffi:defcfun ("dGeomRayGetParams" %ode::geom-ray-get-params)
              :void
              (%ode::g %ode::geom-id)
              (%ode::first-contact (claw-utils:claw-pointer :int))
              (%ode::backface-cull (claw-utils:claw-pointer :int)))

(declaim (inline %ode::geom-ray-set))

(cffi:defcfun ("dGeomRaySet" %ode::geom-ray-set)
              :void
              (%ode::ray %ode::geom-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::dx %ode::real)
              (%ode::dy %ode::real)
              (%ode::dz %ode::real))

(declaim (inline %ode::geom-ray-set-backface-cull))

(cffi:defcfun ("dGeomRaySetBackfaceCull"
               %ode::geom-ray-set-backface-cull)
              :void
              (%ode::g %ode::geom-id)
              (%ode::backface-cull :int))

(declaim (inline %ode::geom-ray-set-closest-hit))

(cffi:defcfun ("dGeomRaySetClosestHit"
               %ode::geom-ray-set-closest-hit)
              :void
              (%ode::g %ode::geom-id)
              (%ode::closest-hit :int))

(declaim (inline %ode::geom-ray-set-first-contact))

(cffi:defcfun ("dGeomRaySetFirstContact"
               %ode::geom-ray-set-first-contact)
              :void
              (%ode::g %ode::geom-id)
              (%ode::first-contact :int))

(declaim (inline %ode::geom-ray-set-length))

(cffi:defcfun ("dGeomRaySetLength" %ode::geom-ray-set-length)
              :void
              (%ode::ray %ode::geom-id)
              (%ode::length %ode::real))

(declaim (inline %ode::geom-ray-set-params))

(cffi:defcfun ("dGeomRaySetParams" %ode::geom-ray-set-params)
              :void
              (%ode::g %ode::geom-id)
              (%ode::first-contact :int)
              (%ode::backface-cull :int))

(declaim (inline %ode::geom-set-body))

(cffi:defcfun ("dGeomSetBody" %ode::geom-set-body)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::body %ode::body-id))

(declaim (inline %ode::geom-set-category-bits))

(cffi:defcfun ("dGeomSetCategoryBits" %ode::geom-set-category-bits)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::bits :unsigned-long))

(declaim (inline %ode::geom-set-collide-bits))

(cffi:defcfun ("dGeomSetCollideBits" %ode::geom-set-collide-bits)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::bits :unsigned-long))

(declaim (inline %ode::geom-set-convex))

(cffi:defcfun ("dGeomSetConvex" %ode::geom-set-convex)
              :void
              (%ode::g %ode::geom-id)
              (%ode::%planes (claw-utils:claw-pointer %ode::real))
              (%ode::%count :unsigned-int)
              (%ode::%points (claw-utils:claw-pointer %ode::real))
              (%ode::%pointcount :unsigned-int)
              (%ode::%polygons
               (claw-utils:claw-pointer :unsigned-int)))

(declaim (inline %ode::geom-set-data))

(cffi:defcfun ("dGeomSetData" %ode::geom-set-data)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::data (claw-utils:claw-pointer :void)))

(declaim (inline %ode::geom-set-offset-position))

(cffi:defcfun ("dGeomSetOffsetPosition"
               %ode::geom-set-offset-position)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::geom-set-offset-quaternion))

(cffi:defcfun ("dGeomSetOffsetQuaternion"
               %ode::geom-set-offset-quaternion)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::q %ode::quaternion))

(declaim (inline %ode::geom-set-offset-rotation))

(cffi:defcfun ("dGeomSetOffsetRotation"
               %ode::geom-set-offset-rotation)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::r %ode::matrix3))

(declaim (inline %ode::geom-set-offset-world-position))

(cffi:defcfun ("dGeomSetOffsetWorldPosition"
               %ode::geom-set-offset-world-position)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::geom-set-offset-world-quaternion))

(cffi:defcfun ("dGeomSetOffsetWorldQuaternion"
               %ode::geom-set-offset-world-quaternion)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::arg1 %ode::quaternion))

(declaim (inline %ode::geom-set-offset-world-rotation))

(cffi:defcfun ("dGeomSetOffsetWorldRotation"
               %ode::geom-set-offset-world-rotation)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::r %ode::matrix3))

(declaim (inline %ode::geom-set-position))

(cffi:defcfun ("dGeomSetPosition" %ode::geom-set-position)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::geom-set-quaternion))

(cffi:defcfun ("dGeomSetQuaternion" %ode::geom-set-quaternion)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::q %ode::quaternion))

(declaim (inline %ode::geom-set-rotation))

(cffi:defcfun ("dGeomSetRotation" %ode::geom-set-rotation)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::r %ode::matrix3))

(declaim (inline %ode::geom-sphere-get-radius))

(cffi:defcfun ("dGeomSphereGetRadius" %ode::geom-sphere-get-radius)
              %ode::real
              (%ode::sphere %ode::geom-id))

(declaim (inline %ode::geom-sphere-point-depth))

(cffi:defcfun ("dGeomSpherePointDepth" %ode::geom-sphere-point-depth)
              %ode::real
              (%ode::sphere %ode::geom-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::geom-sphere-set-radius))

(cffi:defcfun ("dGeomSphereSetRadius" %ode::geom-sphere-set-radius)
              :void
              (%ode::sphere %ode::geom-id)
              (%ode::radius %ode::real))

(declaim (inline %ode::geom-transform-get-cleanup))

(cffi:defcfun ("dGeomTransformGetCleanup"
               %ode::geom-transform-get-cleanup)
              :int
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-transform-get-geom))

(cffi:defcfun ("dGeomTransformGetGeom" %ode::geom-transform-get-geom)
              %ode::geom-id
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-transform-get-info))

(cffi:defcfun ("dGeomTransformGetInfo" %ode::geom-transform-get-info)
              :int
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-transform-set-cleanup))

(cffi:defcfun ("dGeomTransformSetCleanup"
               %ode::geom-transform-set-cleanup)
              :void
              (%ode::g %ode::geom-id)
              (%ode::mode :int))

(declaim (inline %ode::geom-transform-set-geom))

(cffi:defcfun ("dGeomTransformSetGeom" %ode::geom-transform-set-geom)
              :void
              (%ode::g %ode::geom-id)
              (%ode::obj %ode::geom-id))

(declaim (inline %ode::geom-transform-set-info))

(cffi:defcfun ("dGeomTransformSetInfo" %ode::geom-transform-set-info)
              :void
              (%ode::g %ode::geom-id)
              (%ode::mode :int))

(declaim (inline %ode::geom-tri-mesh-clear-tc-cache))

(cffi:defcfun ("dGeomTriMeshClearTCCache"
               %ode::geom-tri-mesh-clear-tc-cache)
              :void
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-tri-mesh-data-build-double))

(cffi:defcfun ("dGeomTriMeshDataBuildDouble"
               %ode::geom-tri-mesh-data-build-double)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::vertices (claw-utils:claw-pointer :void))
              (%ode::vertex-stride :int)
              (%ode::vertex-count :int)
              (%ode::indices (claw-utils:claw-pointer :void))
              (%ode::index-count :int)
              (%ode::tri-stride :int))

(declaim (inline %ode::geom-tri-mesh-data-build-double1))

(cffi:defcfun ("dGeomTriMeshDataBuildDouble1"
               %ode::geom-tri-mesh-data-build-double1)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::vertices (claw-utils:claw-pointer :void))
              (%ode::vertex-stride :int)
              (%ode::vertex-count :int)
              (%ode::indices (claw-utils:claw-pointer :void))
              (%ode::index-count :int)
              (%ode::tri-stride :int)
              (%ode::normals (claw-utils:claw-pointer :void)))

(cffi:defctype %ode::tri-index :unsigned-int)

(declaim (inline %ode::geom-tri-mesh-data-build-simple))

(cffi:defcfun ("dGeomTriMeshDataBuildSimple"
               %ode::geom-tri-mesh-data-build-simple)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::vertices (claw-utils:claw-pointer %ode::real))
              (%ode::vertex-count :int)
              (%ode::indices
               (claw-utils:claw-pointer %ode::tri-index))
              (%ode::index-count :int))

(declaim (inline %ode::geom-tri-mesh-data-build-simple1))

(cffi:defcfun ("dGeomTriMeshDataBuildSimple1"
               %ode::geom-tri-mesh-data-build-simple1)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::vertices (claw-utils:claw-pointer %ode::real))
              (%ode::vertex-count :int)
              (%ode::indices
               (claw-utils:claw-pointer %ode::tri-index))
              (%ode::index-count :int)
              (%ode::normals (claw-utils:claw-pointer :int)))

(declaim (inline %ode::geom-tri-mesh-data-build-single))

(cffi:defcfun ("dGeomTriMeshDataBuildSingle"
               %ode::geom-tri-mesh-data-build-single)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::vertices (claw-utils:claw-pointer :void))
              (%ode::vertex-stride :int)
              (%ode::vertex-count :int)
              (%ode::indices (claw-utils:claw-pointer :void))
              (%ode::index-count :int)
              (%ode::tri-stride :int))

(declaim (inline %ode::geom-tri-mesh-data-build-single1))

(cffi:defcfun ("dGeomTriMeshDataBuildSingle1"
               %ode::geom-tri-mesh-data-build-single1)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::vertices (claw-utils:claw-pointer :void))
              (%ode::vertex-stride :int)
              (%ode::vertex-count :int)
              (%ode::indices (claw-utils:claw-pointer :void))
              (%ode::index-count :int)
              (%ode::tri-stride :int)
              (%ode::normals (claw-utils:claw-pointer :void)))

(declaim (inline %ode::geom-tri-mesh-data-create))

(cffi:defcfun ("dGeomTriMeshDataCreate"
               %ode::geom-tri-mesh-data-create)
              %ode::tri-mesh-data-id)

(declaim (inline %ode::geom-tri-mesh-data-destroy))

(cffi:defcfun ("dGeomTriMeshDataDestroy"
               %ode::geom-tri-mesh-data-destroy)
              :void
              (%ode::g %ode::tri-mesh-data-id))

(declaim (inline %ode::geom-tri-mesh-data-get))

(cffi:defcfun ("dGeomTriMeshDataGet" %ode::geom-tri-mesh-data-get)
              (claw-utils:claw-pointer :void)
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::data-id :int))

(declaim (inline %ode::geom-tri-mesh-data-get2))

(cffi:defcfun ("dGeomTriMeshDataGet2" %ode::geom-tri-mesh-data-get2)
              (claw-utils:claw-pointer :void)
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::data-id :int)
              (%ode::pout-size
               (claw-utils:claw-pointer %ode::dsizeint)))

(declaim (inline %ode::geom-tri-mesh-data-get-buffer))

(cffi:defcfun ("dGeomTriMeshDataGetBuffer"
               %ode::geom-tri-mesh-data-get-buffer)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::buf
               (claw-utils:claw-pointer
                (claw-utils:claw-pointer :unsigned-char)))
              (%ode::buf-len (claw-utils:claw-pointer :int)))

(declaim (inline %ode::geom-tri-mesh-data-preprocess))

(cffi:defcfun ("dGeomTriMeshDataPreprocess"
               %ode::geom-tri-mesh-data-preprocess)
              :int
              (%ode::g %ode::tri-mesh-data-id))

(cffi:defctype %ode::dintptr :long)

(declaim (inline %ode::geom-tri-mesh-data-preprocess2))

(cffi:defcfun ("dGeomTriMeshDataPreprocess2"
               %ode::geom-tri-mesh-data-preprocess2)
              :int
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::build-request-flags :unsigned-int)
              (%ode::request-extra-data
               (claw-utils:claw-pointer %ode::dintptr)))

(declaim (inline %ode::geom-tri-mesh-data-set))

(cffi:defcfun ("dGeomTriMeshDataSet" %ode::geom-tri-mesh-data-set)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::data-id :int)
              (%ode::in-data (claw-utils:claw-pointer :void)))

(declaim (inline %ode::geom-tri-mesh-data-set-buffer))

(cffi:defcfun ("dGeomTriMeshDataSetBuffer"
               %ode::geom-tri-mesh-data-set-buffer)
              :void
              (%ode::g %ode::tri-mesh-data-id)
              (%ode::buf (claw-utils:claw-pointer :unsigned-char)))

(declaim (inline %ode::geom-tri-mesh-data-update))

(cffi:defcfun ("dGeomTriMeshDataUpdate"
               %ode::geom-tri-mesh-data-update)
              :void
              (%ode::g %ode::tri-mesh-data-id))

(declaim (inline %ode::geom-tri-mesh-enable-tc))

(cffi:defcfun ("dGeomTriMeshEnableTC" %ode::geom-tri-mesh-enable-tc)
              :void
              (%ode::g %ode::geom-id)
              (%ode::geom-class :int)
              (%ode::enable :int))

(declaim (inline %ode::geom-tri-mesh-get-array-callback))

(cffi:defcfun ("dGeomTriMeshGetArrayCallback"
               %ode::geom-tri-mesh-get-array-callback)
              (claw-utils:claw-pointer %ode::tri-array-callback)
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-tri-mesh-get-callback))

(cffi:defcfun ("dGeomTriMeshGetCallback"
               %ode::geom-tri-mesh-get-callback)
              (claw-utils:claw-pointer %ode::tri-callback)
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-tri-mesh-get-data))

(cffi:defcfun ("dGeomTriMeshGetData" %ode::geom-tri-mesh-get-data)
              %ode::tri-mesh-data-id
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-tri-mesh-get-last-transform))

(cffi:defcfun ("dGeomTriMeshGetLastTransform"
               %ode::geom-tri-mesh-get-last-transform)
              (claw-utils:claw-pointer %ode::real)
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-tri-mesh-get-point))

(cffi:defcfun ("dGeomTriMeshGetPoint" %ode::geom-tri-mesh-get-point)
              :void
              (%ode::g %ode::geom-id)
              (%ode::index :int)
              (%ode::u %ode::real)
              (%ode::v %ode::real)
              (%ode::out %ode::vector3))

(declaim (inline %ode::geom-tri-mesh-get-ray-callback))

(cffi:defcfun ("dGeomTriMeshGetRayCallback"
               %ode::geom-tri-mesh-get-ray-callback)
              (claw-utils:claw-pointer %ode::tri-ray-callback)
              (%ode::g %ode::geom-id))

(cffi:defctype %ode::tri-tri-merge-callback :void)

(declaim (inline %ode::geom-tri-mesh-get-tri-merge-callback))

(cffi:defcfun ("dGeomTriMeshGetTriMergeCallback"
               %ode::geom-tri-mesh-get-tri-merge-callback)
              (claw-utils:claw-pointer %ode::tri-tri-merge-callback)
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-tri-mesh-get-tri-mesh-data-id))

(cffi:defcfun ("dGeomTriMeshGetTriMeshDataID"
               %ode::geom-tri-mesh-get-tri-mesh-data-id)
              %ode::tri-mesh-data-id
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-tri-mesh-get-triangle))

(cffi:defcfun ("dGeomTriMeshGetTriangle"
               %ode::geom-tri-mesh-get-triangle)
              :void
              (%ode::g %ode::geom-id)
              (%ode::index :int)
              (%ode::v0 (claw-utils:claw-pointer %ode::vector3))
              (%ode::v1 (claw-utils:claw-pointer %ode::vector3))
              (%ode::v2 (claw-utils:claw-pointer %ode::vector3)))

(declaim (inline %ode::geom-tri-mesh-get-triangle-count))

(cffi:defcfun ("dGeomTriMeshGetTriangleCount"
               %ode::geom-tri-mesh-get-triangle-count)
              :int
              (%ode::g %ode::geom-id))

(declaim (inline %ode::geom-tri-mesh-is-tc-enabled))

(cffi:defcfun ("dGeomTriMeshIsTCEnabled"
               %ode::geom-tri-mesh-is-tc-enabled)
              :int
              (%ode::g %ode::geom-id)
              (%ode::geom-class :int))

(declaim (inline %ode::geom-tri-mesh-set-array-callback))

(cffi:defcfun ("dGeomTriMeshSetArrayCallback"
               %ode::geom-tri-mesh-set-array-callback)
              :void
              (%ode::g %ode::geom-id)
              (%ode::array-callback
               (claw-utils:claw-pointer %ode::tri-array-callback)))

(declaim (inline %ode::geom-tri-mesh-set-callback))

(cffi:defcfun ("dGeomTriMeshSetCallback"
               %ode::geom-tri-mesh-set-callback)
              :void
              (%ode::g %ode::geom-id)
              (%ode::callback
               (claw-utils:claw-pointer %ode::tri-callback)))

(declaim (inline %ode::geom-tri-mesh-set-data))

(cffi:defcfun ("dGeomTriMeshSetData" %ode::geom-tri-mesh-set-data)
              :void
              (%ode::g %ode::geom-id)
              (%ode::data %ode::tri-mesh-data-id))

(cffi:defctype %ode::matrix4 (claw-utils:claw-array :float 16))

(declaim (inline %ode::geom-tri-mesh-set-last-transform))

(cffi:defcfun ("dGeomTriMeshSetLastTransform"
               %ode::geom-tri-mesh-set-last-transform)
              :void
              (%ode::g %ode::geom-id)
              (%ode::last-trans %ode::matrix4))

(declaim (inline %ode::geom-tri-mesh-set-ray-callback))

(cffi:defcfun ("dGeomTriMeshSetRayCallback"
               %ode::geom-tri-mesh-set-ray-callback)
              :void
              (%ode::g %ode::geom-id)
              (%ode::callback
               (claw-utils:claw-pointer %ode::tri-ray-callback)))

(declaim (inline %ode::geom-tri-mesh-set-tri-merge-callback))

(cffi:defcfun ("dGeomTriMeshSetTriMergeCallback"
               %ode::geom-tri-mesh-set-tri-merge-callback)
              :void
              (%ode::g %ode::geom-id)
              (%ode::callback
               (claw-utils:claw-pointer
                %ode::tri-tri-merge-callback)))

(declaim (inline %ode::geom-vector-from-world))

(cffi:defcfun ("dGeomVectorFromWorld" %ode::geom-vector-from-world)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(declaim (inline %ode::geom-vector-to-world))

(cffi:defcfun ("dGeomVectorToWorld" %ode::geom-vector-to-world)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::px %ode::real)
              (%ode::py %ode::real)
              (%ode::pz %ode::real)
              (%ode::result %ode::vector3))

(cffi:defctype %ode::alloc-function :void)

(declaim (inline %ode::get-alloc-handler))

(cffi:defcfun ("dGetAllocHandler" %ode::get-alloc-handler)
              (claw-utils:claw-pointer %ode::alloc-function))

(declaim (inline %ode::get-configuration))

(cffi:defcfun ("dGetConfiguration" %ode::get-configuration)
              claw-utils:claw-string)

(cffi:defctype %ode::message-function :void)

(declaim (inline %ode::get-debug-handler))

(cffi:defcfun ("dGetDebugHandler" %ode::get-debug-handler)
              (claw-utils:claw-pointer %ode::message-function))

(declaim (inline %ode::get-error-handler))

(cffi:defcfun ("dGetErrorHandler" %ode::get-error-handler)
              (claw-utils:claw-pointer %ode::message-function))

(cffi:defctype %ode::free-function :void)

(declaim (inline %ode::get-free-handler))

(cffi:defcfun ("dGetFreeHandler" %ode::get-free-handler)
              (claw-utils:claw-pointer %ode::free-function))

(declaim (inline %ode::get-message-handler))

(cffi:defcfun ("dGetMessageHandler" %ode::get-message-handler)
              (claw-utils:claw-pointer %ode::message-function))

(cffi:defctype %ode::realloc-function :void)

(declaim (inline %ode::get-realloc-handler))

(cffi:defcfun ("dGetReallocHandler" %ode::get-realloc-handler)
              (claw-utils:claw-pointer %ode::realloc-function))

(declaim (inline %ode::hash-space-create))

(cffi:defcfun ("dHashSpaceCreate" %ode::hash-space-create)
              %ode::space-id
              (%ode::space %ode::space-id))

(declaim (inline %ode::hash-space-get-levels))

(cffi:defcfun ("dHashSpaceGetLevels" %ode::hash-space-get-levels)
              :void
              (%ode::space %ode::space-id)
              (%ode::minlevel (claw-utils:claw-pointer :int))
              (%ode::maxlevel (claw-utils:claw-pointer :int)))

(declaim (inline %ode::hash-space-set-levels))

(cffi:defcfun ("dHashSpaceSetLevels" %ode::hash-space-set-levels)
              :void
              (%ode::space %ode::space-id)
              (%ode::minlevel :int)
              (%ode::maxlevel :int))

(declaim (inline %ode::infinite-aabb))

(cffi:defcfun ("dInfiniteAABB" %ode::infinite-aabb)
              :void
              (%ode::geom %ode::geom-id)
              (%ode::aabb (claw-utils:claw-array %ode::real 6)))

(declaim (inline %ode::init-ode))

(cffi:defcfun ("dInitODE" %ode::init-ode) :void)

(declaim (inline %ode::init-ode2))

(cffi:defcfun ("dInitODE2" %ode::init-ode2)
              :int
              (%ode::ui-init-flags :unsigned-int))

(declaim (inline %ode::invert-pd-matrix))

(cffi:defcfun ("dInvertPDMatrix" %ode::invert-pd-matrix)
              :int
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::ainv (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::is-positive-definite))

(cffi:defcfun ("dIsPositiveDefinite" %ode::is-positive-definite)
              :int
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::joint-add-a-motor-torques))

(cffi:defcfun ("dJointAddAMotorTorques"
               %ode::joint-add-a-motor-torques)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::torque1 %ode::real)
              (%ode::torque2 %ode::real)
              (%ode::torque3 %ode::real))

(declaim (inline %ode::joint-add-hinge2torques))

(cffi:defcfun ("dJointAddHinge2Torques"
               %ode::joint-add-hinge2torques)
              :void
              (%ode::joint %ode::joint-id)
              (%ode::torque1 %ode::real)
              (%ode::torque2 %ode::real))

(declaim (inline %ode::joint-add-hinge-torque))

(cffi:defcfun ("dJointAddHingeTorque" %ode::joint-add-hinge-torque)
              :void
              (%ode::joint %ode::joint-id)
              (%ode::torque %ode::real))

(declaim (inline %ode::joint-add-pr-torque))

(cffi:defcfun ("dJointAddPRTorque" %ode::joint-add-pr-torque)
              :void
              (%ode::j %ode::joint-id)
              (%ode::torque %ode::real))

(declaim (inline %ode::joint-add-pu-torque))

(cffi:defcfun ("dJointAddPUTorque" %ode::joint-add-pu-torque)
              :void
              (%ode::j %ode::joint-id)
              (%ode::torque %ode::real))

(declaim (inline %ode::joint-add-piston-force))

(cffi:defcfun ("dJointAddPistonForce" %ode::joint-add-piston-force)
              :void
              (%ode::joint %ode::joint-id)
              (%ode::force %ode::real))

(declaim (inline %ode::joint-add-slider-force))

(cffi:defcfun ("dJointAddSliderForce" %ode::joint-add-slider-force)
              :void
              (%ode::joint %ode::joint-id)
              (%ode::force %ode::real))

(declaim (inline %ode::joint-add-universal-torques))

(cffi:defcfun ("dJointAddUniversalTorques"
               %ode::joint-add-universal-torques)
              :void
              (%ode::joint %ode::joint-id)
              (%ode::torque1 %ode::real)
              (%ode::torque2 %ode::real))

(declaim (inline %ode::joint-attach))

(cffi:defcfun ("dJointAttach" %ode::joint-attach)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::body1 %ode::body-id)
              (%ode::body2 %ode::body-id))

(cffi:defcstruct (%ode::x-joint-group :size 0))

(cffi:defctype %ode::joint-group-id
               (claw-utils:claw-pointer
                (:struct %ode::x-joint-group)))

(declaim (inline %ode::joint-create-a-motor))

(cffi:defcfun ("dJointCreateAMotor" %ode::joint-create-a-motor)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-ball))

(cffi:defcfun ("dJointCreateBall" %ode::joint-create-ball)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(cffi:defcstruct (%ode::surface-parameters :size 60)
                 (%ode::mode :int :offset 0)
                 (%ode::mu %ode::real :offset 4)
                 (%ode::mu2 %ode::real :offset 8)
                 (%ode::rho %ode::real :offset 12)
                 (%ode::rho2 %ode::real :offset 16)
                 (%ode::rho-n %ode::real :offset 20)
                 (%ode::bounce %ode::real :offset 24)
                 (%ode::bounce-vel %ode::real :offset 28)
                 (%ode::soft-erp %ode::real :offset 32)
                 (%ode::soft-cfm %ode::real :offset 36)
                 (%ode::motion1 %ode::real :offset 40)
                 (%ode::motion2 %ode::real :offset 44)
                 (%ode::motion-n %ode::real :offset 48)
                 (%ode::slip1 %ode::real :offset 52)
                 (%ode::slip2 %ode::real :offset 56))

(cffi:defctype %ode::surface-parameters
               (:struct %ode::surface-parameters))

(cffi:defcstruct (%ode::contact :size 144)
                 (%ode::surface %ode::surface-parameters :offset 0)
                 (%ode::geom %ode::contact-geom :offset 64)
                 (%ode::fdir1 %ode::vector3 :offset 128))

(cffi:defctype %ode::contact (:struct %ode::contact))

(declaim (inline %ode::joint-create-contact))

(cffi:defcfun ("dJointCreateContact" %ode::joint-create-contact)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id)
              (%ode::arg2 (claw-utils:claw-pointer %ode::contact)))

(declaim (inline %ode::joint-create-d-ball))

(cffi:defcfun ("dJointCreateDBall" %ode::joint-create-d-ball)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-d-hinge))

(cffi:defcfun ("dJointCreateDHinge" %ode::joint-create-d-hinge)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-fixed))

(cffi:defcfun ("dJointCreateFixed" %ode::joint-create-fixed)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-hinge))

(cffi:defcfun ("dJointCreateHinge" %ode::joint-create-hinge)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-hinge2))

(cffi:defcfun ("dJointCreateHinge2" %ode::joint-create-hinge2)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-l-motor))

(cffi:defcfun ("dJointCreateLMotor" %ode::joint-create-l-motor)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-null))

(cffi:defcfun ("dJointCreateNull" %ode::joint-create-null)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-pr))

(cffi:defcfun ("dJointCreatePR" %ode::joint-create-pr)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-pu))

(cffi:defcfun ("dJointCreatePU" %ode::joint-create-pu)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-piston))

(cffi:defcfun ("dJointCreatePiston" %ode::joint-create-piston)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-plane2d))

(cffi:defcfun ("dJointCreatePlane2D" %ode::joint-create-plane2d)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-slider))

(cffi:defcfun ("dJointCreateSlider" %ode::joint-create-slider)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-transmission))

(cffi:defcfun ("dJointCreateTransmission"
               %ode::joint-create-transmission)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-create-universal))

(cffi:defcfun ("dJointCreateUniversal" %ode::joint-create-universal)
              %ode::joint-id
              (%ode::arg0 %ode::world-id)
              (%ode::arg1 %ode::joint-group-id))

(declaim (inline %ode::joint-destroy))

(cffi:defcfun ("dJointDestroy" %ode::joint-destroy)
              :void
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-disable))

(cffi:defcfun ("dJointDisable" %ode::joint-disable)
              :void
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-enable))

(cffi:defcfun ("dJointEnable" %ode::joint-enable)
              :void
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-a-motor-angle))

(cffi:defcfun ("dJointGetAMotorAngle" %ode::joint-get-a-motor-angle)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::anum :int))

(declaim (inline %ode::joint-get-a-motor-angle-rate))

(cffi:defcfun ("dJointGetAMotorAngleRate"
               %ode::joint-get-a-motor-angle-rate)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::anum :int))

(declaim (inline %ode::joint-get-a-motor-axis))

(cffi:defcfun ("dJointGetAMotorAxis" %ode::joint-get-a-motor-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::anum :int)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-a-motor-axis-rel))

(cffi:defcfun ("dJointGetAMotorAxisRel"
               %ode::joint-get-a-motor-axis-rel)
              :int
              (%ode::arg0 %ode::joint-id)
              (%ode::anum :int))

(declaim (inline %ode::joint-get-a-motor-mode))

(cffi:defcfun ("dJointGetAMotorMode" %ode::joint-get-a-motor-mode)
              :int
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-a-motor-num-axes))

(cffi:defcfun ("dJointGetAMotorNumAxes"
               %ode::joint-get-a-motor-num-axes)
              :int
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-a-motor-param))

(cffi:defcfun ("dJointGetAMotorParam" %ode::joint-get-a-motor-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-ball-anchor))

(cffi:defcfun ("dJointGetBallAnchor" %ode::joint-get-ball-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-ball-anchor2))

(cffi:defcfun ("dJointGetBallAnchor2" %ode::joint-get-ball-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-ball-param))

(cffi:defcfun ("dJointGetBallParam" %ode::joint-get-ball-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-body))

(cffi:defcfun ("dJointGetBody" %ode::joint-get-body)
              %ode::body-id
              (%ode::arg0 %ode::joint-id)
              (%ode::index :int))

(declaim (inline %ode::joint-get-d-ball-anchor1))

(cffi:defcfun ("dJointGetDBallAnchor1"
               %ode::joint-get-d-ball-anchor1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-d-ball-anchor2))

(cffi:defcfun ("dJointGetDBallAnchor2"
               %ode::joint-get-d-ball-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-d-ball-distance))

(cffi:defcfun ("dJointGetDBallDistance"
               %ode::joint-get-d-ball-distance)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-d-ball-param))

(cffi:defcfun ("dJointGetDBallParam" %ode::joint-get-d-ball-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-d-hinge-anchor1))

(cffi:defcfun ("dJointGetDHingeAnchor1"
               %ode::joint-get-d-hinge-anchor1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-d-hinge-anchor2))

(cffi:defcfun ("dJointGetDHingeAnchor2"
               %ode::joint-get-d-hinge-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-d-hinge-axis))

(cffi:defcfun ("dJointGetDHingeAxis" %ode::joint-get-d-hinge-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-d-hinge-distance))

(cffi:defcfun ("dJointGetDHingeDistance"
               %ode::joint-get-d-hinge-distance)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-d-hinge-param))

(cffi:defcfun ("dJointGetDHingeParam" %ode::joint-get-d-hinge-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-data))

(cffi:defcfun ("dJointGetData" %ode::joint-get-data)
              (claw-utils:claw-pointer :void)
              (%ode::arg0 %ode::joint-id))

(cffi:defcstruct (%ode::joint-feedback :size 64)
                 (%ode::f1 %ode::vector3 :offset 0)
                 (%ode::t1 %ode::vector3 :offset 16)
                 (%ode::f2 %ode::vector3 :offset 32)
                 (%ode::t2 %ode::vector3 :offset 48))

(cffi:defctype %ode::joint-feedback (:struct %ode::joint-feedback))

(declaim (inline %ode::joint-get-feedback))

(cffi:defcfun ("dJointGetFeedback" %ode::joint-get-feedback)
              (claw-utils:claw-pointer %ode::joint-feedback)
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-fixed-param))

(cffi:defcfun ("dJointGetFixedParam" %ode::joint-get-fixed-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-hinge2anchor))

(cffi:defcfun ("dJointGetHinge2Anchor" %ode::joint-get-hinge2anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-hinge2anchor2))

(cffi:defcfun ("dJointGetHinge2Anchor2"
               %ode::joint-get-hinge2anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-hinge2angle1))

(cffi:defcfun ("dJointGetHinge2Angle1" %ode::joint-get-hinge2angle1)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-hinge2angle1rate))

(cffi:defcfun ("dJointGetHinge2Angle1Rate"
               %ode::joint-get-hinge2angle1rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-hinge2angle2))

(cffi:defcfun ("dJointGetHinge2Angle2" %ode::joint-get-hinge2angle2)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-hinge2angle2rate))

(cffi:defcfun ("dJointGetHinge2Angle2Rate"
               %ode::joint-get-hinge2angle2rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-hinge2axis1))

(cffi:defcfun ("dJointGetHinge2Axis1" %ode::joint-get-hinge2axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-hinge2axis2))

(cffi:defcfun ("dJointGetHinge2Axis2" %ode::joint-get-hinge2axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-hinge2param))

(cffi:defcfun ("dJointGetHinge2Param" %ode::joint-get-hinge2param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-hinge-anchor))

(cffi:defcfun ("dJointGetHingeAnchor" %ode::joint-get-hinge-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-hinge-anchor2))

(cffi:defcfun ("dJointGetHingeAnchor2" %ode::joint-get-hinge-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-hinge-angle))

(cffi:defcfun ("dJointGetHingeAngle" %ode::joint-get-hinge-angle)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-hinge-angle-rate))

(cffi:defcfun ("dJointGetHingeAngleRate"
               %ode::joint-get-hinge-angle-rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-hinge-axis))

(cffi:defcfun ("dJointGetHingeAxis" %ode::joint-get-hinge-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-hinge-param))

(cffi:defcfun ("dJointGetHingeParam" %ode::joint-get-hinge-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-l-motor-axis))

(cffi:defcfun ("dJointGetLMotorAxis" %ode::joint-get-l-motor-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::anum :int)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-l-motor-num-axes))

(cffi:defcfun ("dJointGetLMotorNumAxes"
               %ode::joint-get-l-motor-num-axes)
              :int
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-l-motor-param))

(cffi:defcfun ("dJointGetLMotorParam" %ode::joint-get-l-motor-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-num-bodies))

(cffi:defcfun ("dJointGetNumBodies" %ode::joint-get-num-bodies)
              :int
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pr-anchor))

(cffi:defcfun ("dJointGetPRAnchor" %ode::joint-get-pr-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-pr-angle))

(cffi:defcfun ("dJointGetPRAngle" %ode::joint-get-pr-angle)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pr-angle-rate))

(cffi:defcfun ("dJointGetPRAngleRate" %ode::joint-get-pr-angle-rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pr-axis1))

(cffi:defcfun ("dJointGetPRAxis1" %ode::joint-get-pr-axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-pr-axis2))

(cffi:defcfun ("dJointGetPRAxis2" %ode::joint-get-pr-axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-pr-param))

(cffi:defcfun ("dJointGetPRParam" %ode::joint-get-pr-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-pr-position))

(cffi:defcfun ("dJointGetPRPosition" %ode::joint-get-pr-position)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pr-position-rate))

(cffi:defcfun ("dJointGetPRPositionRate"
               %ode::joint-get-pr-position-rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pu-anchor))

(cffi:defcfun ("dJointGetPUAnchor" %ode::joint-get-pu-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-pu-angle1))

(cffi:defcfun ("dJointGetPUAngle1" %ode::joint-get-pu-angle1)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pu-angle1rate))

(cffi:defcfun ("dJointGetPUAngle1Rate" %ode::joint-get-pu-angle1rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pu-angle2))

(cffi:defcfun ("dJointGetPUAngle2" %ode::joint-get-pu-angle2)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pu-angle2rate))

(cffi:defcfun ("dJointGetPUAngle2Rate" %ode::joint-get-pu-angle2rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pu-angles))

(cffi:defcfun ("dJointGetPUAngles" %ode::joint-get-pu-angles)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::angle1 (claw-utils:claw-pointer %ode::real))
              (%ode::angle2 (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::joint-get-pu-axis1))

(cffi:defcfun ("dJointGetPUAxis1" %ode::joint-get-pu-axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-pu-axis2))

(cffi:defcfun ("dJointGetPUAxis2" %ode::joint-get-pu-axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-pu-axis3))

(cffi:defcfun ("dJointGetPUAxis3" %ode::joint-get-pu-axis3)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-pu-axis-p))

(cffi:defcfun ("dJointGetPUAxisP" %ode::joint-get-pu-axis-p)
              :void
              (%ode::id %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-pu-param))

(cffi:defcfun ("dJointGetPUParam" %ode::joint-get-pu-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-pu-position))

(cffi:defcfun ("dJointGetPUPosition" %ode::joint-get-pu-position)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-pu-position-rate))

(cffi:defcfun ("dJointGetPUPositionRate"
               %ode::joint-get-pu-position-rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-piston-anchor))

(cffi:defcfun ("dJointGetPistonAnchor" %ode::joint-get-piston-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-piston-anchor2))

(cffi:defcfun ("dJointGetPistonAnchor2"
               %ode::joint-get-piston-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-piston-angle))

(cffi:defcfun ("dJointGetPistonAngle" %ode::joint-get-piston-angle)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-piston-angle-rate))

(cffi:defcfun ("dJointGetPistonAngleRate"
               %ode::joint-get-piston-angle-rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-piston-axis))

(cffi:defcfun ("dJointGetPistonAxis" %ode::joint-get-piston-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-piston-param))

(cffi:defcfun ("dJointGetPistonParam" %ode::joint-get-piston-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-piston-position))

(cffi:defcfun ("dJointGetPistonPosition"
               %ode::joint-get-piston-position)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-piston-position-rate))

(cffi:defcfun ("dJointGetPistonPositionRate"
               %ode::joint-get-piston-position-rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-slider-axis))

(cffi:defcfun ("dJointGetSliderAxis" %ode::joint-get-slider-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-slider-param))

(cffi:defcfun ("dJointGetSliderParam" %ode::joint-get-slider-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-slider-position))

(cffi:defcfun ("dJointGetSliderPosition"
               %ode::joint-get-slider-position)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-slider-position-rate))

(cffi:defcfun ("dJointGetSliderPositionRate"
               %ode::joint-get-slider-position-rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-transmission-anchor1))

(cffi:defcfun ("dJointGetTransmissionAnchor1"
               %ode::joint-get-transmission-anchor1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-transmission-anchor2))

(cffi:defcfun ("dJointGetTransmissionAnchor2"
               %ode::joint-get-transmission-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-transmission-angle1))

(cffi:defcfun ("dJointGetTransmissionAngle1"
               %ode::joint-get-transmission-angle1)
              %ode::real
              (%ode::j %ode::joint-id))

(declaim (inline %ode::joint-get-transmission-angle2))

(cffi:defcfun ("dJointGetTransmissionAngle2"
               %ode::joint-get-transmission-angle2)
              %ode::real
              (%ode::j %ode::joint-id))

(declaim (inline %ode::joint-get-transmission-axis))

(cffi:defcfun ("dJointGetTransmissionAxis"
               %ode::joint-get-transmission-axis)
              :void
              (%ode::j %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-transmission-axis1))

(cffi:defcfun ("dJointGetTransmissionAxis1"
               %ode::joint-get-transmission-axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-transmission-axis2))

(cffi:defcfun ("dJointGetTransmissionAxis2"
               %ode::joint-get-transmission-axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-transmission-backlash))

(cffi:defcfun ("dJointGetTransmissionBacklash"
               %ode::joint-get-transmission-backlash)
              %ode::real
              (%ode::j %ode::joint-id))

(declaim (inline %ode::joint-get-transmission-contact-point1))

(cffi:defcfun ("dJointGetTransmissionContactPoint1"
               %ode::joint-get-transmission-contact-point1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-transmission-contact-point2))

(cffi:defcfun ("dJointGetTransmissionContactPoint2"
               %ode::joint-get-transmission-contact-point2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-transmission-mode))

(cffi:defcfun ("dJointGetTransmissionMode"
               %ode::joint-get-transmission-mode)
              :int
              (%ode::j %ode::joint-id))

(declaim (inline %ode::joint-get-transmission-param))

(cffi:defcfun ("dJointGetTransmissionParam"
               %ode::joint-get-transmission-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-get-transmission-radius1))

(cffi:defcfun ("dJointGetTransmissionRadius1"
               %ode::joint-get-transmission-radius1)
              %ode::real
              (%ode::j %ode::joint-id))

(declaim (inline %ode::joint-get-transmission-radius2))

(cffi:defcfun ("dJointGetTransmissionRadius2"
               %ode::joint-get-transmission-radius2)
              %ode::real
              (%ode::j %ode::joint-id))

(declaim (inline %ode::joint-get-transmission-ratio))

(cffi:defcfun ("dJointGetTransmissionRatio"
               %ode::joint-get-transmission-ratio)
              %ode::real
              (%ode::j %ode::joint-id))

(cffi:defctype %ode::joint-type %ode::|C:@EA@D-JOINT-TYPE|)

(declaim (inline %ode::joint-get-type))

(cffi:defcfun ("dJointGetType" %ode::joint-get-type)
              %ode::joint-type
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-universal-anchor))

(cffi:defcfun ("dJointGetUniversalAnchor"
               %ode::joint-get-universal-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-universal-anchor2))

(cffi:defcfun ("dJointGetUniversalAnchor2"
               %ode::joint-get-universal-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-universal-angle1))

(cffi:defcfun ("dJointGetUniversalAngle1"
               %ode::joint-get-universal-angle1)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-universal-angle1rate))

(cffi:defcfun ("dJointGetUniversalAngle1Rate"
               %ode::joint-get-universal-angle1rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-universal-angle2))

(cffi:defcfun ("dJointGetUniversalAngle2"
               %ode::joint-get-universal-angle2)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-universal-angle2rate))

(cffi:defcfun ("dJointGetUniversalAngle2Rate"
               %ode::joint-get-universal-angle2rate)
              %ode::real
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-get-universal-angles))

(cffi:defcfun ("dJointGetUniversalAngles"
               %ode::joint-get-universal-angles)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::angle1 (claw-utils:claw-pointer %ode::real))
              (%ode::angle2 (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::joint-get-universal-axis1))

(cffi:defcfun ("dJointGetUniversalAxis1"
               %ode::joint-get-universal-axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-universal-axis2))

(cffi:defcfun ("dJointGetUniversalAxis2"
               %ode::joint-get-universal-axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::result %ode::vector3))

(declaim (inline %ode::joint-get-universal-param))

(cffi:defcfun ("dJointGetUniversalParam"
               %ode::joint-get-universal-param)
              %ode::real
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int))

(declaim (inline %ode::joint-group-create))

(cffi:defcfun ("dJointGroupCreate" %ode::joint-group-create)
              %ode::joint-group-id
              (%ode::max-size :int))

(declaim (inline %ode::joint-group-destroy))

(cffi:defcfun ("dJointGroupDestroy" %ode::joint-group-destroy)
              :void
              (%ode::arg0 %ode::joint-group-id))

(declaim (inline %ode::joint-group-empty))

(cffi:defcfun ("dJointGroupEmpty" %ode::joint-group-empty)
              :void
              (%ode::arg0 %ode::joint-group-id))

(declaim (inline %ode::joint-is-enabled))

(cffi:defcfun ("dJointIsEnabled" %ode::joint-is-enabled)
              :int
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-set-a-motor-angle))

(cffi:defcfun ("dJointSetAMotorAngle" %ode::joint-set-a-motor-angle)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::anum :int)
              (%ode::angle %ode::real))

(declaim (inline %ode::joint-set-a-motor-axis))

(cffi:defcfun ("dJointSetAMotorAxis" %ode::joint-set-a-motor-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::anum :int)
              (%ode::rel :int)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-a-motor-mode))

(cffi:defcfun ("dJointSetAMotorMode" %ode::joint-set-a-motor-mode)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::mode :int))

(declaim (inline %ode::joint-set-a-motor-num-axes))

(cffi:defcfun ("dJointSetAMotorNumAxes"
               %ode::joint-set-a-motor-num-axes)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::num :int))

(declaim (inline %ode::joint-set-a-motor-param))

(cffi:defcfun ("dJointSetAMotorParam" %ode::joint-set-a-motor-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-ball-anchor))

(cffi:defcfun ("dJointSetBallAnchor" %ode::joint-set-ball-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-ball-anchor2))

(cffi:defcfun ("dJointSetBallAnchor2" %ode::joint-set-ball-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-ball-param))

(cffi:defcfun ("dJointSetBallParam" %ode::joint-set-ball-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-d-ball-anchor1))

(cffi:defcfun ("dJointSetDBallAnchor1"
               %ode::joint-set-d-ball-anchor1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-d-ball-anchor2))

(cffi:defcfun ("dJointSetDBallAnchor2"
               %ode::joint-set-d-ball-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-d-ball-distance))

(cffi:defcfun ("dJointSetDBallDistance"
               %ode::joint-set-d-ball-distance)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::dist %ode::real))

(declaim (inline %ode::joint-set-d-ball-param))

(cffi:defcfun ("dJointSetDBallParam" %ode::joint-set-d-ball-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-d-hinge-anchor1))

(cffi:defcfun ("dJointSetDHingeAnchor1"
               %ode::joint-set-d-hinge-anchor1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-d-hinge-anchor2))

(cffi:defcfun ("dJointSetDHingeAnchor2"
               %ode::joint-set-d-hinge-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-d-hinge-axis))

(cffi:defcfun ("dJointSetDHingeAxis" %ode::joint-set-d-hinge-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-d-hinge-param))

(cffi:defcfun ("dJointSetDHingeParam" %ode::joint-set-d-hinge-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-data))

(cffi:defcfun ("dJointSetData" %ode::joint-set-data)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::data (claw-utils:claw-pointer :void)))

(declaim (inline %ode::joint-set-feedback))

(cffi:defcfun ("dJointSetFeedback" %ode::joint-set-feedback)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::arg1
               (claw-utils:claw-pointer %ode::joint-feedback)))

(declaim (inline %ode::joint-set-fixed))

(cffi:defcfun ("dJointSetFixed" %ode::joint-set-fixed)
              :void
              (%ode::arg0 %ode::joint-id))

(declaim (inline %ode::joint-set-fixed-param))

(cffi:defcfun ("dJointSetFixedParam" %ode::joint-set-fixed-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-hinge2anchor))

(cffi:defcfun ("dJointSetHinge2Anchor" %ode::joint-set-hinge2anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-hinge2axes))

(cffi:defcfun ("dJointSetHinge2Axes" %ode::joint-set-hinge2axes)
              :void
              (%ode::j %ode::joint-id)
              (%ode::axis1 (claw-utils:claw-pointer %ode::real))
              (%ode::axis2 (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::joint-set-hinge2axis1))

(cffi:defcfun ("dJointSetHinge2Axis1" %ode::joint-set-hinge2axis1)
              :void
              (%ode::j %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-hinge2axis2))

(cffi:defcfun ("dJointSetHinge2Axis2" %ode::joint-set-hinge2axis2)
              :void
              (%ode::j %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-hinge2param))

(cffi:defcfun ("dJointSetHinge2Param" %ode::joint-set-hinge2param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-hinge-anchor))

(cffi:defcfun ("dJointSetHingeAnchor" %ode::joint-set-hinge-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-hinge-anchor-delta))

(cffi:defcfun ("dJointSetHingeAnchorDelta"
               %ode::joint-set-hinge-anchor-delta)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::ax %ode::real)
              (%ode::ay %ode::real)
              (%ode::az %ode::real))

(declaim (inline %ode::joint-set-hinge-axis))

(cffi:defcfun ("dJointSetHingeAxis" %ode::joint-set-hinge-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-hinge-axis-offset))

(cffi:defcfun ("dJointSetHingeAxisOffset"
               %ode::joint-set-hinge-axis-offset)
              :void
              (%ode::j %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::angle %ode::real))

(declaim (inline %ode::joint-set-hinge-param))

(cffi:defcfun ("dJointSetHingeParam" %ode::joint-set-hinge-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-l-motor-axis))

(cffi:defcfun ("dJointSetLMotorAxis" %ode::joint-set-l-motor-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::anum :int)
              (%ode::rel :int)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-l-motor-num-axes))

(cffi:defcfun ("dJointSetLMotorNumAxes"
               %ode::joint-set-l-motor-num-axes)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::num :int))

(declaim (inline %ode::joint-set-l-motor-param))

(cffi:defcfun ("dJointSetLMotorParam" %ode::joint-set-l-motor-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-pr-anchor))

(cffi:defcfun ("dJointSetPRAnchor" %ode::joint-set-pr-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-pr-axis1))

(cffi:defcfun ("dJointSetPRAxis1" %ode::joint-set-pr-axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-pr-axis2))

(cffi:defcfun ("dJointSetPRAxis2" %ode::joint-set-pr-axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-pr-param))

(cffi:defcfun ("dJointSetPRParam" %ode::joint-set-pr-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-pu-anchor))

(cffi:defcfun ("dJointSetPUAnchor" %ode::joint-set-pu-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-pu-anchor-delta))

(cffi:defcfun ("dJointSetPUAnchorDelta"
               %ode::joint-set-pu-anchor-delta)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::dx %ode::real)
              (%ode::dy %ode::real)
              (%ode::dz %ode::real))

(declaim (inline %ode::joint-set-pu-anchor-offset))

(cffi:defcfun ("dJointSetPUAnchorOffset"
               %ode::joint-set-pu-anchor-offset)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::dx %ode::real)
              (%ode::dy %ode::real)
              (%ode::dz %ode::real))

(declaim (inline %ode::joint-set-pu-axis1))

(cffi:defcfun ("dJointSetPUAxis1" %ode::joint-set-pu-axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-pu-axis2))

(cffi:defcfun ("dJointSetPUAxis2" %ode::joint-set-pu-axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-pu-axis3))

(cffi:defcfun ("dJointSetPUAxis3" %ode::joint-set-pu-axis3)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-pu-axis-p))

(cffi:defcfun ("dJointSetPUAxisP" %ode::joint-set-pu-axis-p)
              :void
              (%ode::id %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-pu-param))

(cffi:defcfun ("dJointSetPUParam" %ode::joint-set-pu-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-piston-anchor))

(cffi:defcfun ("dJointSetPistonAnchor" %ode::joint-set-piston-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-piston-anchor-offset))

(cffi:defcfun ("dJointSetPistonAnchorOffset"
               %ode::joint-set-piston-anchor-offset)
              :void
              (%ode::j %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::dx %ode::real)
              (%ode::dy %ode::real)
              (%ode::dz %ode::real))

(declaim (inline %ode::joint-set-piston-axis))

(cffi:defcfun ("dJointSetPistonAxis" %ode::joint-set-piston-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-piston-axis-delta))

(cffi:defcfun ("dJointSetPistonAxisDelta"
               %ode::joint-set-piston-axis-delta)
              :void
              (%ode::j %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::ax %ode::real)
              (%ode::ay %ode::real)
              (%ode::az %ode::real))

(declaim (inline %ode::joint-set-piston-param))

(cffi:defcfun ("dJointSetPistonParam" %ode::joint-set-piston-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-plane2d-angle-param))

(cffi:defcfun ("dJointSetPlane2DAngleParam"
               %ode::joint-set-plane2d-angle-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-plane2dx-param))

(cffi:defcfun ("dJointSetPlane2DXParam"
               %ode::joint-set-plane2dx-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-plane2dy-param))

(cffi:defcfun ("dJointSetPlane2DYParam"
               %ode::joint-set-plane2dy-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-slider-axis))

(cffi:defcfun ("dJointSetSliderAxis" %ode::joint-set-slider-axis)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-slider-axis-delta))

(cffi:defcfun ("dJointSetSliderAxisDelta"
               %ode::joint-set-slider-axis-delta)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::ax %ode::real)
              (%ode::ay %ode::real)
              (%ode::az %ode::real))

(declaim (inline %ode::joint-set-slider-param))

(cffi:defcfun ("dJointSetSliderParam" %ode::joint-set-slider-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-transmission-anchor1))

(cffi:defcfun ("dJointSetTransmissionAnchor1"
               %ode::joint-set-transmission-anchor1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-transmission-anchor2))

(cffi:defcfun ("dJointSetTransmissionAnchor2"
               %ode::joint-set-transmission-anchor2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-transmission-axis))

(cffi:defcfun ("dJointSetTransmissionAxis"
               %ode::joint-set-transmission-axis)
              :void
              (%ode::j %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-transmission-axis1))

(cffi:defcfun ("dJointSetTransmissionAxis1"
               %ode::joint-set-transmission-axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-transmission-axis2))

(cffi:defcfun ("dJointSetTransmissionAxis2"
               %ode::joint-set-transmission-axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-transmission-backlash))

(cffi:defcfun ("dJointSetTransmissionBacklash"
               %ode::joint-set-transmission-backlash)
              :void
              (%ode::j %ode::joint-id)
              (%ode::backlash %ode::real))

(declaim (inline %ode::joint-set-transmission-mode))

(cffi:defcfun ("dJointSetTransmissionMode"
               %ode::joint-set-transmission-mode)
              :void
              (%ode::j %ode::joint-id)
              (%ode::mode :int))

(declaim (inline %ode::joint-set-transmission-param))

(cffi:defcfun ("dJointSetTransmissionParam"
               %ode::joint-set-transmission-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::joint-set-transmission-radius1))

(cffi:defcfun ("dJointSetTransmissionRadius1"
               %ode::joint-set-transmission-radius1)
              :void
              (%ode::j %ode::joint-id)
              (%ode::radius %ode::real))

(declaim (inline %ode::joint-set-transmission-radius2))

(cffi:defcfun ("dJointSetTransmissionRadius2"
               %ode::joint-set-transmission-radius2)
              :void
              (%ode::j %ode::joint-id)
              (%ode::radius %ode::real))

(declaim (inline %ode::joint-set-transmission-ratio))

(cffi:defcfun ("dJointSetTransmissionRatio"
               %ode::joint-set-transmission-ratio)
              :void
              (%ode::j %ode::joint-id)
              (%ode::ratio %ode::real))

(declaim (inline %ode::joint-set-universal-anchor))

(cffi:defcfun ("dJointSetUniversalAnchor"
               %ode::joint-set-universal-anchor)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-universal-axis1))

(cffi:defcfun ("dJointSetUniversalAxis1"
               %ode::joint-set-universal-axis1)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-universal-axis1offset))

(cffi:defcfun ("dJointSetUniversalAxis1Offset"
               %ode::joint-set-universal-axis1offset)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::offset1 %ode::real)
              (%ode::offset2 %ode::real))

(declaim (inline %ode::joint-set-universal-axis2))

(cffi:defcfun ("dJointSetUniversalAxis2"
               %ode::joint-set-universal-axis2)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::joint-set-universal-axis2offset))

(cffi:defcfun ("dJointSetUniversalAxis2Offset"
               %ode::joint-set-universal-axis2offset)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real)
              (%ode::offset1 %ode::real)
              (%ode::offset2 %ode::real))

(declaim (inline %ode::joint-set-universal-param))

(cffi:defcfun ("dJointSetUniversalParam"
               %ode::joint-set-universal-param)
              :void
              (%ode::arg0 %ode::joint-id)
              (%ode::parameter :int)
              (%ode::value %ode::real))

(declaim (inline %ode::ldlt-add-tl))

(cffi:defcfun ("dLDLTAddTL" %ode::ldlt-add-tl)
              :void
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::d (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::nskip :int))

(declaim (inline %ode::ldlt-remove))

(cffi:defcfun ("dLDLTRemove" %ode::ldlt-remove)
              :void
              (%ode::a
               (claw-utils:claw-pointer
                (claw-utils:claw-pointer %ode::real)))
              (%ode::p (claw-utils:claw-pointer :int))
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::d (claw-utils:claw-pointer %ode::real))
              (%ode::n1 :int)
              (%ode::n2 :int)
              (%ode::r :int)
              (%ode::nskip :int))

(declaim (inline %ode::make-random-matrix))

(cffi:defcfun ("dMakeRandomMatrix" %ode::make-random-matrix)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::m :int)
              (%ode::range %ode::real))

(declaim (inline %ode::make-random-vector))

(cffi:defcfun ("dMakeRandomVector" %ode::make-random-vector)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::range %ode::real))

(declaim (inline %ode::mass-add))

(cffi:defcfun ("dMassAdd" %ode::mass-add)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::mass))
              (%ode::b (claw-utils:claw-pointer %ode::mass)))

(declaim (inline %ode::mass-adjust))

(cffi:defcfun ("dMassAdjust" %ode::mass-adjust)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::newmass %ode::real))

(declaim (inline %ode::mass-check))

(cffi:defcfun ("dMassCheck" %ode::mass-check)
              :int
              (%ode::m (claw-utils:claw-pointer %ode::mass)))

(declaim (inline %ode::mass-rotate))

(cffi:defcfun ("dMassRotate" %ode::mass-rotate)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::r %ode::matrix3))

(declaim (inline %ode::mass-set-box))

(cffi:defcfun ("dMassSetBox" %ode::mass-set-box)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::density %ode::real)
              (%ode::lx %ode::real)
              (%ode::ly %ode::real)
              (%ode::lz %ode::real))

(declaim (inline %ode::mass-set-box-total))

(cffi:defcfun ("dMassSetBoxTotal" %ode::mass-set-box-total)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::total-mass %ode::real)
              (%ode::lx %ode::real)
              (%ode::ly %ode::real)
              (%ode::lz %ode::real))

(declaim (inline %ode::mass-set-capped-cylinder))

(cffi:defcfun ("dMassSetCappedCylinder"
               %ode::mass-set-capped-cylinder)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::mass))
              (%ode::b %ode::real)
              (%ode::c :int)
              (%ode::d %ode::real)
              (%ode::e %ode::real))

(declaim (inline %ode::mass-set-capped-cylinder-total))

(cffi:defcfun ("dMassSetCappedCylinderTotal"
               %ode::mass-set-capped-cylinder-total)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::mass))
              (%ode::b %ode::real)
              (%ode::c :int)
              (%ode::d %ode::real)
              (%ode::e %ode::real))

(declaim (inline %ode::mass-set-capsule))

(cffi:defcfun ("dMassSetCapsule" %ode::mass-set-capsule)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::density %ode::real)
              (%ode::direction :int)
              (%ode::radius %ode::real)
              (%ode::length %ode::real))

(declaim (inline %ode::mass-set-capsule-total))

(cffi:defcfun ("dMassSetCapsuleTotal" %ode::mass-set-capsule-total)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::total-mass %ode::real)
              (%ode::direction :int)
              (%ode::radius %ode::real)
              (%ode::length %ode::real))

(declaim (inline %ode::mass-set-cylinder))

(cffi:defcfun ("dMassSetCylinder" %ode::mass-set-cylinder)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::density %ode::real)
              (%ode::direction :int)
              (%ode::radius %ode::real)
              (%ode::length %ode::real))

(declaim (inline %ode::mass-set-cylinder-total))

(cffi:defcfun ("dMassSetCylinderTotal" %ode::mass-set-cylinder-total)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::total-mass %ode::real)
              (%ode::direction :int)
              (%ode::radius %ode::real)
              (%ode::length %ode::real))

(declaim (inline %ode::mass-set-parameters))

(cffi:defcfun ("dMassSetParameters" %ode::mass-set-parameters)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::themass %ode::real)
              (%ode::cgx %ode::real)
              (%ode::cgy %ode::real)
              (%ode::cgz %ode::real)
              (%ode::i11 %ode::real)
              (%ode::i22 %ode::real)
              (%ode::i33 %ode::real)
              (%ode::i12 %ode::real)
              (%ode::i13 %ode::real)
              (%ode::i23 %ode::real))

(declaim (inline %ode::mass-set-sphere))

(cffi:defcfun ("dMassSetSphere" %ode::mass-set-sphere)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::density %ode::real)
              (%ode::radius %ode::real))

(declaim (inline %ode::mass-set-sphere-total))

(cffi:defcfun ("dMassSetSphereTotal" %ode::mass-set-sphere-total)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::total-mass %ode::real)
              (%ode::radius %ode::real))

(declaim (inline %ode::mass-set-trimesh))

(cffi:defcfun ("dMassSetTrimesh" %ode::mass-set-trimesh)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::density %ode::real)
              (%ode::g %ode::geom-id))

(declaim (inline %ode::mass-set-trimesh-total))

(cffi:defcfun ("dMassSetTrimeshTotal" %ode::mass-set-trimesh-total)
              :void
              (%ode::m (claw-utils:claw-pointer %ode::mass))
              (%ode::total-mass %ode::real)
              (%ode::g %ode::geom-id))

(declaim (inline %ode::mass-set-zero))

(cffi:defcfun ("dMassSetZero" %ode::mass-set-zero)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass)))

(declaim (inline %ode::mass-translate))

(cffi:defcfun ("dMassTranslate" %ode::mass-translate)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::mass))
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::max-difference))

(cffi:defcfun ("dMaxDifference" %ode::max-difference)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::m :int))

(declaim (inline %ode::max-difference-lower-triangle))

(cffi:defcfun ("dMaxDifferenceLowerTriangle"
               %ode::max-difference-lower-triangle)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::message))

(cffi:defcfun ("dMessage" %ode::message)
              :void
              (%ode::num :int)
              (%ode::msg claw-utils:claw-string)
              &rest)

(declaim (inline %ode::multiply0))

(cffi:defcfun ("dMultiply0" %ode::multiply0)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::c (claw-utils:claw-pointer %ode::real))
              (%ode::p :int)
              (%ode::q :int)
              (%ode::r :int))

(declaim (inline %ode::multiply1))

(cffi:defcfun ("dMultiply1" %ode::multiply1)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::c (claw-utils:claw-pointer %ode::real))
              (%ode::p :int)
              (%ode::q :int)
              (%ode::r :int))

(declaim (inline %ode::multiply2))

(cffi:defcfun ("dMultiply2" %ode::multiply2)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::c (claw-utils:claw-pointer %ode::real))
              (%ode::p :int)
              (%ode::q :int)
              (%ode::r :int))

(declaim (inline %ode::normalize3))

(cffi:defcfun ("dNormalize3" %ode::normalize3)
              :void
              (%ode::a %ode::vector3))

(declaim (inline %ode::normalize4))

(cffi:defcfun ("dNormalize4" %ode::normalize4)
              :void
              (%ode::a %ode::vector4))

(declaim (inline %ode::orthogonalize-r))

(cffi:defcfun ("dOrthogonalizeR" %ode::orthogonalize-r)
              :int
              (%ode::m %ode::matrix3))

(declaim (inline %ode::plane-space))

(cffi:defcfun ("dPlaneSpace" %ode::plane-space)
              :void
              (%ode::n %ode::vector3)
              (%ode::p %ode::vector3)
              (%ode::q %ode::vector3))

(cffi:defcstruct (%ode::%io-marker :size 0))

(cffi:defctype %ode::%%off-t :long)

(cffi:defctype %ode::%io-lock-t :void)

(cffi:defctype %ode::%%off64-t :long)

(cffi:defcstruct (%ode::%io-codecvt :size 0))

(cffi:defcstruct (%ode::%io-wide-data :size 0))

(cffi:defcstruct (%ode::%io-file :size 216))

(cffi:defctype %ode::size-t :unsigned-long)

(cffi:defcstruct (%ode::%io-file :size 216)
                 (%ode::%flags :int :offset 0)
                 (%ode::%io-read-ptr claw-utils:claw-string :offset
                  8)
                 (%ode::%io-read-end claw-utils:claw-string :offset
                  16)
                 (%ode::%io-read-base claw-utils:claw-string :offset
                  24)
                 (%ode::%io-write-base claw-utils:claw-string :offset
                  32)
                 (%ode::%io-write-ptr claw-utils:claw-string :offset
                  40)
                 (%ode::%io-write-end claw-utils:claw-string :offset
                  48)
                 (%ode::%io-buf-base claw-utils:claw-string :offset
                  56)
                 (%ode::%io-buf-end claw-utils:claw-string :offset
                  64)
                 (%ode::%io-save-base claw-utils:claw-string :offset
                  72)
                 (%ode::%io-backup-base claw-utils:claw-string
                  :offset 80)
                 (%ode::%io-save-end claw-utils:claw-string :offset
                  88)
                 (%ode::%markers
                  (claw-utils:claw-pointer
                   (:struct %ode::%io-marker))
                  :offset 96)
                 (%ode::%chain
                  (claw-utils:claw-pointer (:struct %ode::%io-file))
                  :offset 104)
                 (%ode::%fileno :int :offset 112)
                 (%ode::%flags2 :int :offset 116)
                 (%ode::%old-offset %ode::%%off-t :offset 120)
                 (%ode::%cur-column :unsigned-short :offset 128)
                 (%ode::%vtable-offset :char :offset 130)
                 (%ode::%shortbuf :char :count 1 :offset 131)
                 (%ode::%lock
                  (claw-utils:claw-pointer %ode::%io-lock-t) :offset
                  136)
                 (%ode::%offset %ode::%%off64-t :offset 144)
                 (%ode::%codecvt
                  (claw-utils:claw-pointer
                   (:struct %ode::%io-codecvt))
                  :offset 152)
                 (%ode::%wide-data
                  (claw-utils:claw-pointer
                   (:struct %ode::%io-wide-data))
                  :offset 160)
                 (%ode::%freeres-list
                  (claw-utils:claw-pointer (:struct %ode::%io-file))
                  :offset 168)
                 (%ode::%freeres-buf (claw-utils:claw-pointer :void)
                  :offset 176)
                 (%ode::%%pad5 %ode::size-t :offset 184)
                 (%ode::%mode :int :offset 192)
                 (%ode::%unused2 :char :count 20 :offset 196))

(cffi:defctype %ode::file (:struct %ode::%io-file))

(declaim (inline %ode::print-matrix))

(cffi:defcfun ("dPrintMatrix" %ode::print-matrix)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::m :int)
              (%ode::fmt claw-utils:claw-string)
              (%ode::f (claw-utils:claw-pointer %ode::file)))

(declaim (inline %ode::q-from-axis-and-angle))

(cffi:defcfun ("dQFromAxisAndAngle" %ode::q-from-axis-and-angle)
              :void
              (%ode::q %ode::quaternion)
              (%ode::ax %ode::real)
              (%ode::ay %ode::real)
              (%ode::az %ode::real)
              (%ode::angle %ode::real))

(declaim (inline %ode::q-multiply0))

(cffi:defcfun ("dQMultiply0" %ode::q-multiply0)
              :void
              (%ode::qa %ode::quaternion)
              (%ode::qb %ode::quaternion)
              (%ode::qc %ode::quaternion))

(declaim (inline %ode::q-multiply1))

(cffi:defcfun ("dQMultiply1" %ode::q-multiply1)
              :void
              (%ode::qa %ode::quaternion)
              (%ode::qb %ode::quaternion)
              (%ode::qc %ode::quaternion))

(declaim (inline %ode::q-multiply2))

(cffi:defcfun ("dQMultiply2" %ode::q-multiply2)
              :void
              (%ode::qa %ode::quaternion)
              (%ode::qb %ode::quaternion)
              (%ode::qc %ode::quaternion))

(declaim (inline %ode::q-multiply3))

(cffi:defcfun ("dQMultiply3" %ode::q-multiply3)
              :void
              (%ode::qa %ode::quaternion)
              (%ode::qb %ode::quaternion)
              (%ode::qc %ode::quaternion))

(declaim (inline %ode::q-set-identity))

(cffi:defcfun ("dQSetIdentity" %ode::q-set-identity)
              :void
              (%ode::q %ode::quaternion))

(declaim (inline %ode::qfrom-r))

(cffi:defcfun ("dQfromR" %ode::qfrom-r)
              :void
              (%ode::q %ode::quaternion)
              (%ode::r %ode::matrix3))

(declaim (inline %ode::quad-tree-space-create))

(cffi:defcfun ("dQuadTreeSpaceCreate" %ode::quad-tree-space-create)
              %ode::space-id
              (%ode::space %ode::space-id)
              (%ode::center %ode::vector3)
              (%ode::extents %ode::vector3)
              (%ode::depth :int))

(declaim (inline %ode::r-from2axes))

(cffi:defcfun ("dRFrom2Axes" %ode::r-from2axes)
              :void
              (%ode::r %ode::matrix3)
              (%ode::ax %ode::real)
              (%ode::ay %ode::real)
              (%ode::az %ode::real)
              (%ode::bx %ode::real)
              (%ode::by %ode::real)
              (%ode::bz %ode::real))

(declaim (inline %ode::r-from-axis-and-angle))

(cffi:defcfun ("dRFromAxisAndAngle" %ode::r-from-axis-and-angle)
              :void
              (%ode::r %ode::matrix3)
              (%ode::ax %ode::real)
              (%ode::ay %ode::real)
              (%ode::az %ode::real)
              (%ode::angle %ode::real))

(declaim (inline %ode::r-from-euler-angles))

(cffi:defcfun ("dRFromEulerAngles" %ode::r-from-euler-angles)
              :void
              (%ode::r %ode::matrix3)
              (%ode::phi %ode::real)
              (%ode::theta %ode::real)
              (%ode::psi %ode::real))

(declaim (inline %ode::r-from-z-axis))

(cffi:defcfun ("dRFromZAxis" %ode::r-from-z-axis)
              :void
              (%ode::r %ode::matrix3)
              (%ode::ax %ode::real)
              (%ode::ay %ode::real)
              (%ode::az %ode::real))

(declaim (inline %ode::r-set-identity))

(cffi:defcfun ("dRSetIdentity" %ode::r-set-identity)
              :void
              (%ode::r %ode::matrix3))

(declaim (inline %ode::rand))

(cffi:defcfun ("dRand" %ode::rand) :unsigned-long)

(declaim (inline %ode::rand-get-seed))

(cffi:defcfun ("dRandGetSeed" %ode::rand-get-seed) :unsigned-long)

(declaim (inline %ode::rand-int))

(cffi:defcfun ("dRandInt" %ode::rand-int) :int (%ode::n :int))

(declaim (inline %ode::rand-real))

(cffi:defcfun ("dRandReal" %ode::rand-real) %ode::real)

(declaim (inline %ode::rand-set-seed))

(cffi:defcfun ("dRandSetSeed" %ode::rand-set-seed)
              :void
              (%ode::s :unsigned-long))

(declaim (inline %ode::realloc))

(cffi:defcfun ("dRealloc" %ode::realloc)
              (claw-utils:claw-pointer :void)
              (%ode::ptr (claw-utils:claw-pointer :void))
              (%ode::oldsize %ode::dsizeint)
              (%ode::newsize %ode::dsizeint))

(declaim (inline %ode::remove-row-col))

(cffi:defcfun ("dRemoveRowCol" %ode::remove-row-col)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::nskip :int)
              (%ode::r :int))

(declaim (inline %ode::resource-container-acquire))

(cffi:defcfun ("dResourceContainerAcquire"
               %ode::resource-container-acquire)
              %ode::resource-container-id
              (%ode::requirements %ode::resource-requirements-id))

(declaim (inline %ode::resource-container-destroy))

(cffi:defcfun ("dResourceContainerDestroy"
               %ode::resource-container-destroy)
              :void
              (%ode::resources %ode::resource-container-id))

(declaim (inline %ode::resource-requirements-clone))

(cffi:defcfun ("dResourceRequirementsClone"
               %ode::resource-requirements-clone)
              %ode::resource-requirements-id
              (%ode::requirements %ode::resource-requirements-id))

(declaim (inline %ode::resource-requirements-create))

(cffi:defcfun ("dResourceRequirementsCreate"
               %ode::resource-requirements-create)
              %ode::resource-requirements-id
              (%ode::cooperative %ode::cooperative-id))

(declaim (inline %ode::resource-requirements-destroy))

(cffi:defcfun ("dResourceRequirementsDestroy"
               %ode::resource-requirements-destroy)
              :void
              (%ode::requirements %ode::resource-requirements-id))

(declaim (inline %ode::resource-requirements-merge-in))

(cffi:defcfun ("dResourceRequirementsMergeIn"
               %ode::resource-requirements-merge-in)
              :void
              (%ode::summary-requirements
               %ode::resource-requirements-id)
              (%ode::extra-requirements
               %ode::resource-requirements-id))

(declaim (inline %ode::rfrom-q))

(cffi:defcfun ("dRfromQ" %ode::rfrom-q)
              :void
              (%ode::r %ode::matrix3)
              (%ode::q %ode::quaternion))

(declaim (inline %ode::safe-normalize3))

(cffi:defcfun ("dSafeNormalize3" %ode::safe-normalize3)
              :int
              (%ode::a %ode::vector3))

(declaim (inline %ode::safe-normalize4))

(cffi:defcfun ("dSafeNormalize4" %ode::safe-normalize4)
              :int
              (%ode::a %ode::vector4))

(declaim (inline %ode::scale-vector))

(cffi:defcfun ("dScaleVector" %ode::scale-vector)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::d (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::set-alloc-handler))

(cffi:defcfun ("dSetAllocHandler" %ode::set-alloc-handler)
              :void
              (%ode::fn
               (claw-utils:claw-pointer %ode::alloc-function)))

(cffi:defctype %ode::collider-fn :void)

(declaim (inline %ode::set-collider-override))

(cffi:defcfun ("dSetColliderOverride" %ode::set-collider-override)
              :void
              (%ode::i :int)
              (%ode::j :int)
              (%ode::fn (claw-utils:claw-pointer %ode::collider-fn)))

(declaim (inline %ode::set-debug-handler))

(cffi:defcfun ("dSetDebugHandler" %ode::set-debug-handler)
              :void
              (%ode::fn
               (claw-utils:claw-pointer %ode::message-function)))

(declaim (inline %ode::set-error-handler))

(cffi:defcfun ("dSetErrorHandler" %ode::set-error-handler)
              :void
              (%ode::fn
               (claw-utils:claw-pointer %ode::message-function)))

(declaim (inline %ode::set-free-handler))

(cffi:defcfun ("dSetFreeHandler" %ode::set-free-handler)
              :void
              (%ode::fn
               (claw-utils:claw-pointer %ode::free-function)))

(declaim (inline %ode::set-message-handler))

(cffi:defcfun ("dSetMessageHandler" %ode::set-message-handler)
              :void
              (%ode::fn
               (claw-utils:claw-pointer %ode::message-function)))

(declaim (inline %ode::set-realloc-handler))

(cffi:defcfun ("dSetReallocHandler" %ode::set-realloc-handler)
              :void
              (%ode::fn
               (claw-utils:claw-pointer %ode::realloc-function)))

(declaim (inline %ode::set-value))

(cffi:defcfun ("dSetValue" %ode::set-value)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::value %ode::real))

(declaim (inline %ode::set-zero))

(cffi:defcfun ("dSetZero" %ode::set-zero)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::simple-space-create))

(cffi:defcfun ("dSimpleSpaceCreate" %ode::simple-space-create)
              %ode::space-id
              (%ode::space %ode::space-id))

(declaim (inline %ode::solve-cholesky))

(cffi:defcfun ("dSolveCholesky" %ode::solve-cholesky)
              :void
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::solve-l1))

(cffi:defcfun ("dSolveL1" %ode::solve-l1)
              :void
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::nskip :int))

(declaim (inline %ode::solve-l1t))

(cffi:defcfun ("dSolveL1T" %ode::solve-l1t)
              :void
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::nskip :int))

(declaim (inline %ode::solve-ldlt))

(cffi:defcfun ("dSolveLDLT" %ode::solve-ldlt)
              :void
              (%ode::l (claw-utils:claw-pointer %ode::real))
              (%ode::d (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::n :int)
              (%ode::nskip :int))

(declaim (inline %ode::space-add))

(cffi:defcfun ("dSpaceAdd" %ode::space-add)
              :void
              (%ode::arg0 %ode::space-id)
              (%ode::arg1 %ode::geom-id))

(declaim (inline %ode::space-clean))

(cffi:defcfun ("dSpaceClean" %ode::space-clean)
              :void
              (%ode::arg0 %ode::space-id))

(cffi:defctype %ode::near-callback :void)

(declaim (inline %ode::space-collide))

(cffi:defcfun ("dSpaceCollide" %ode::space-collide)
              :void
              (%ode::space %ode::space-id)
              (%ode::data (claw-utils:claw-pointer :void))
              (%ode::callback
               (claw-utils:claw-pointer %ode::near-callback)))

(declaim (inline %ode::space-collide2))

(cffi:defcfun ("dSpaceCollide2" %ode::space-collide2)
              :void
              (%ode::space1 %ode::geom-id)
              (%ode::space2 %ode::geom-id)
              (%ode::data (claw-utils:claw-pointer :void))
              (%ode::callback
               (claw-utils:claw-pointer %ode::near-callback)))

(declaim (inline %ode::space-destroy))

(cffi:defcfun ("dSpaceDestroy" %ode::space-destroy)
              :void
              (%ode::arg0 %ode::space-id))

(declaim (inline %ode::space-get-class))

(cffi:defcfun ("dSpaceGetClass" %ode::space-get-class)
              :int
              (%ode::space %ode::space-id))

(declaim (inline %ode::space-get-cleanup))

(cffi:defcfun ("dSpaceGetCleanup" %ode::space-get-cleanup)
              :int
              (%ode::space %ode::space-id))

(declaim (inline %ode::space-get-geom))

(cffi:defcfun ("dSpaceGetGeom" %ode::space-get-geom)
              %ode::geom-id
              (%ode::arg0 %ode::space-id)
              (%ode::i :int))

(declaim (inline %ode::space-get-manual-cleanup))

(cffi:defcfun ("dSpaceGetManualCleanup"
               %ode::space-get-manual-cleanup)
              :int
              (%ode::space %ode::space-id))

(declaim (inline %ode::space-get-num-geoms))

(cffi:defcfun ("dSpaceGetNumGeoms" %ode::space-get-num-geoms)
              :int
              (%ode::arg0 %ode::space-id))

(declaim (inline %ode::space-get-sublevel))

(cffi:defcfun ("dSpaceGetSublevel" %ode::space-get-sublevel)
              :int
              (%ode::space %ode::space-id))

(declaim (inline %ode::space-query))

(cffi:defcfun ("dSpaceQuery" %ode::space-query)
              :int
              (%ode::arg0 %ode::space-id)
              (%ode::arg1 %ode::geom-id))

(declaim (inline %ode::space-remove))

(cffi:defcfun ("dSpaceRemove" %ode::space-remove)
              :void
              (%ode::arg0 %ode::space-id)
              (%ode::arg1 %ode::geom-id))

(declaim (inline %ode::space-set-cleanup))

(cffi:defcfun ("dSpaceSetCleanup" %ode::space-set-cleanup)
              :void
              (%ode::space %ode::space-id)
              (%ode::mode :int))

(declaim (inline %ode::space-set-manual-cleanup))

(cffi:defcfun ("dSpaceSetManualCleanup"
               %ode::space-set-manual-cleanup)
              :void
              (%ode::space %ode::space-id)
              (%ode::mode :int))

(declaim (inline %ode::space-set-sublevel))

(cffi:defcfun ("dSpaceSetSublevel" %ode::space-set-sublevel)
              :void
              (%ode::space %ode::space-id)
              (%ode::sublevel :int))

(cffi:defcstruct (%ode::stopwatch :size 24)
                 (%ode::time :double :offset 0)
                 (%ode::cc :unsigned-long :count 2 :offset 8))

(cffi:defctype %ode::stopwatch (:struct %ode::stopwatch))

(declaim (inline %ode::stopwatch-reset))

(cffi:defcfun ("dStopwatchReset" %ode::stopwatch-reset)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::stopwatch)))

(declaim (inline %ode::stopwatch-start))

(cffi:defcfun ("dStopwatchStart" %ode::stopwatch-start)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::stopwatch)))

(declaim (inline %ode::stopwatch-stop))

(cffi:defcfun ("dStopwatchStop" %ode::stopwatch-stop)
              :void
              (%ode::arg0 (claw-utils:claw-pointer %ode::stopwatch)))

(declaim (inline %ode::stopwatch-time))

(cffi:defcfun ("dStopwatchTime" %ode::stopwatch-time)
              :double
              (%ode::arg0 (claw-utils:claw-pointer %ode::stopwatch)))

(declaim (inline %ode::sweep-and-prune-space-create))

(cffi:defcfun ("dSweepAndPruneSpaceCreate"
               %ode::sweep-and-prune-space-create)
              %ode::space-id
              (%ode::space %ode::space-id)
              (%ode::axisorder :int))

(declaim (inline %ode::test-rand))

(cffi:defcfun ("dTestRand" %ode::test-rand) :int)

(declaim (inline
          %ode::threading-allocate-multi-threaded-implementation))

(cffi:defcfun ("dThreadingAllocateMultiThreadedImplementation"
               %ode::threading-allocate-multi-threaded-implementation)
              %ode::threading-implementation-id
              &rest)

(declaim (inline
          %ode::threading-allocate-self-threaded-implementation))

(cffi:defcfun ("dThreadingAllocateSelfThreadedImplementation"
               %ode::threading-allocate-self-threaded-implementation)
              %ode::threading-implementation-id
              &rest)

(cffi:defcstruct (%ode::x-threading-thread-pool :size 0))

(cffi:defctype %ode::threading-thread-pool-id
               (claw-utils:claw-pointer
                (:struct %ode::x-threading-thread-pool)))

(declaim (inline %ode::threading-allocate-thread-pool))

(cffi:defcfun ("dThreadingAllocateThreadPool"
               %ode::threading-allocate-thread-pool)
              %ode::threading-thread-pool-id
              (%ode::thread-count :unsigned-int)
              (%ode::stack-size %ode::dsizeint)
              (%ode::ode-data-allocate-flags :unsigned-int)
              (%ode::reserved (claw-utils:claw-pointer :void)))

(declaim (inline %ode::threading-free-implementation))

(cffi:defcfun ("dThreadingFreeImplementation"
               %ode::threading-free-implementation)
              :void
              (%ode::impl %ode::threading-implementation-id))

(declaim (inline %ode::threading-free-thread-pool))

(cffi:defcfun ("dThreadingFreeThreadPool"
               %ode::threading-free-thread-pool)
              :void
              (%ode::pool %ode::threading-thread-pool-id))

(declaim (inline %ode::threading-implementation-cleanup-for-restart))

(cffi:defcfun ("dThreadingImplementationCleanupForRestart"
               %ode::threading-implementation-cleanup-for-restart)
              :void
              (%ode::impl %ode::threading-implementation-id))

(declaim (inline %ode::threading-implementation-get-functions))

(cffi:defcfun ("dThreadingImplementationGetFunctions"
               %ode::threading-implementation-get-functions)
              (claw-utils:claw-pointer
               %ode::threading-functions-info)
              (%ode::impl %ode::threading-implementation-id))

(declaim (inline %ode::threading-implementation-shutdown-processing))

(cffi:defcfun ("dThreadingImplementationShutdownProcessing"
               %ode::threading-implementation-shutdown-processing)
              :void
              (%ode::impl %ode::threading-implementation-id))

(declaim (inline
          %ode::threading-thread-pool-serve-multi-threaded-implementation))

(cffi:defcfun ("dThreadingThreadPoolServeMultiThreadedImplementation"
               %ode::threading-thread-pool-serve-multi-threaded-implementation)
              :void
              (%ode::pool %ode::threading-thread-pool-id)
              (%ode::impl %ode::threading-implementation-id))

(declaim (inline %ode::threading-thread-pool-wait-idle-state))

(cffi:defcfun ("dThreadingThreadPoolWaitIdleState"
               %ode::threading-thread-pool-wait-idle-state)
              :void
              (%ode::pool %ode::threading-thread-pool-id))

(declaim (inline %ode::timer-end))

(cffi:defcfun ("dTimerEnd" %ode::timer-end) :void)

(declaim (inline %ode::timer-now))

(cffi:defcfun ("dTimerNow" %ode::timer-now)
              :void
              (%ode::description claw-utils:claw-string))

(declaim (inline %ode::timer-report))

(cffi:defcfun ("dTimerReport" %ode::timer-report)
              :void
              (%ode::fout (claw-utils:claw-pointer %ode::file))
              (%ode::average :int))

(declaim (inline %ode::timer-resolution))

(cffi:defcfun ("dTimerResolution" %ode::timer-resolution) :double)

(declaim (inline %ode::timer-start))

(cffi:defcfun ("dTimerStart" %ode::timer-start)
              :void
              (%ode::description claw-utils:claw-string))

(declaim (inline %ode::timer-ticks-per-second))

(cffi:defcfun ("dTimerTicksPerSecond" %ode::timer-ticks-per-second)
              :double)

(declaim (inline %ode::vector-scale))

(cffi:defcfun ("dVectorScale" %ode::vector-scale)
              :void
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::d (claw-utils:claw-pointer %ode::real))
              (%ode::n :int))

(declaim (inline %ode::world-cleanup-working-memory))

(cffi:defcfun ("dWorldCleanupWorkingMemory"
               %ode::world-cleanup-working-memory)
              :void
              (%ode::w %ode::world-id))

(declaim (inline %ode::world-create))

(cffi:defcfun ("dWorldCreate" %ode::world-create) %ode::world-id)

(declaim (inline %ode::world-destroy))

(cffi:defcfun ("dWorldDestroy" %ode::world-destroy)
              :void
              (%ode::world %ode::world-id))

(declaim (inline %ode::world-export-dif))

(cffi:defcfun ("dWorldExportDIF" %ode::world-export-dif)
              :void
              (%ode::w %ode::world-id)
              (%ode::file (claw-utils:claw-pointer %ode::file))
              (%ode::world-name claw-utils:claw-string))

(declaim (inline %ode::world-get-angular-damping))

(cffi:defcfun ("dWorldGetAngularDamping"
               %ode::world-get-angular-damping)
              %ode::real
              (%ode::w %ode::world-id))

(declaim (inline %ode::world-get-angular-damping-threshold))

(cffi:defcfun ("dWorldGetAngularDampingThreshold"
               %ode::world-get-angular-damping-threshold)
              %ode::real
              (%ode::w %ode::world-id))

(declaim (inline %ode::world-get-auto-disable-angular-threshold))

(cffi:defcfun ("dWorldGetAutoDisableAngularThreshold"
               %ode::world-get-auto-disable-angular-threshold)
              %ode::real
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-auto-disable-average-samples-count))

(cffi:defcfun ("dWorldGetAutoDisableAverageSamplesCount"
               %ode::world-get-auto-disable-average-samples-count)
              :int
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-auto-disable-flag))

(cffi:defcfun ("dWorldGetAutoDisableFlag"
               %ode::world-get-auto-disable-flag)
              :int
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-auto-disable-linear-threshold))

(cffi:defcfun ("dWorldGetAutoDisableLinearThreshold"
               %ode::world-get-auto-disable-linear-threshold)
              %ode::real
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-auto-disable-steps))

(cffi:defcfun ("dWorldGetAutoDisableSteps"
               %ode::world-get-auto-disable-steps)
              :int
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-auto-disable-time))

(cffi:defcfun ("dWorldGetAutoDisableTime"
               %ode::world-get-auto-disable-time)
              %ode::real
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-cfm))

(cffi:defcfun ("dWorldGetCFM" %ode::world-get-cfm)
              %ode::real
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-contact-max-correcting-vel))

(cffi:defcfun ("dWorldGetContactMaxCorrectingVel"
               %ode::world-get-contact-max-correcting-vel)
              %ode::real
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-contact-surface-layer))

(cffi:defcfun ("dWorldGetContactSurfaceLayer"
               %ode::world-get-contact-surface-layer)
              %ode::real
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-data))

(cffi:defcfun ("dWorldGetData" %ode::world-get-data)
              (claw-utils:claw-pointer :void)
              (%ode::world %ode::world-id))

(declaim (inline %ode::world-get-erp))

(cffi:defcfun ("dWorldGetERP" %ode::world-get-erp)
              %ode::real
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-gravity))

(cffi:defcfun ("dWorldGetGravity" %ode::world-get-gravity)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::gravity %ode::vector3))

(declaim (inline %ode::world-get-linear-damping))

(cffi:defcfun ("dWorldGetLinearDamping"
               %ode::world-get-linear-damping)
              %ode::real
              (%ode::w %ode::world-id))

(declaim (inline %ode::world-get-linear-damping-threshold))

(cffi:defcfun ("dWorldGetLinearDampingThreshold"
               %ode::world-get-linear-damping-threshold)
              %ode::real
              (%ode::w %ode::world-id))

(declaim (inline %ode::world-get-max-angular-speed))

(cffi:defcfun ("dWorldGetMaxAngularSpeed"
               %ode::world-get-max-angular-speed)
              %ode::real
              (%ode::w %ode::world-id))

(declaim (inline %ode::world-get-quick-step-num-iterations))

(cffi:defcfun ("dWorldGetQuickStepNumIterations"
               %ode::world-get-quick-step-num-iterations)
              :int
              (%ode::arg0 %ode::world-id))

(declaim (inline %ode::world-get-quick-step-w))

(cffi:defcfun ("dWorldGetQuickStepW" %ode::world-get-quick-step-w)
              %ode::real
              (%ode::arg0 %ode::world-id))

(declaim (inline
          %ode::world-get-step-islands-processing-max-thread-count))

(cffi:defcfun ("dWorldGetStepIslandsProcessingMaxThreadCount"
               %ode::world-get-step-islands-processing-max-thread-count)
              :unsigned-int
              (%ode::w %ode::world-id))

(declaim (inline %ode::world-impulse-to-force))

(cffi:defcfun ("dWorldImpulseToForce" %ode::world-impulse-to-force)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::stepsize %ode::real)
              (%ode::ix %ode::real)
              (%ode::iy %ode::real)
              (%ode::iz %ode::real)
              (%ode::force %ode::vector3))

(declaim (inline %ode::world-quick-step))

(cffi:defcfun ("dWorldQuickStep" %ode::world-quick-step)
              :int
              (%ode::w %ode::world-id)
              (%ode::stepsize %ode::real))

(declaim (inline %ode::world-set-angular-damping))

(cffi:defcfun ("dWorldSetAngularDamping"
               %ode::world-set-angular-damping)
              :void
              (%ode::w %ode::world-id)
              (%ode::scale %ode::real))

(declaim (inline %ode::world-set-angular-damping-threshold))

(cffi:defcfun ("dWorldSetAngularDampingThreshold"
               %ode::world-set-angular-damping-threshold)
              :void
              (%ode::w %ode::world-id)
              (%ode::threshold %ode::real))

(declaim (inline %ode::world-set-auto-disable-angular-threshold))

(cffi:defcfun ("dWorldSetAutoDisableAngularThreshold"
               %ode::world-set-auto-disable-angular-threshold)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::angular-average-threshold %ode::real))

(declaim (inline %ode::world-set-auto-disable-average-samples-count))

(cffi:defcfun ("dWorldSetAutoDisableAverageSamplesCount"
               %ode::world-set-auto-disable-average-samples-count)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::average-samples-count :unsigned-int))

(declaim (inline %ode::world-set-auto-disable-flag))

(cffi:defcfun ("dWorldSetAutoDisableFlag"
               %ode::world-set-auto-disable-flag)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::do-auto-disable :int))

(declaim (inline %ode::world-set-auto-disable-linear-threshold))

(cffi:defcfun ("dWorldSetAutoDisableLinearThreshold"
               %ode::world-set-auto-disable-linear-threshold)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::linear-average-threshold %ode::real))

(declaim (inline %ode::world-set-auto-disable-steps))

(cffi:defcfun ("dWorldSetAutoDisableSteps"
               %ode::world-set-auto-disable-steps)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::steps :int))

(declaim (inline %ode::world-set-auto-disable-time))

(cffi:defcfun ("dWorldSetAutoDisableTime"
               %ode::world-set-auto-disable-time)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::time %ode::real))

(declaim (inline %ode::world-set-cfm))

(cffi:defcfun ("dWorldSetCFM" %ode::world-set-cfm)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::cfm %ode::real))

(declaim (inline %ode::world-set-contact-max-correcting-vel))

(cffi:defcfun ("dWorldSetContactMaxCorrectingVel"
               %ode::world-set-contact-max-correcting-vel)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::vel %ode::real))

(declaim (inline %ode::world-set-contact-surface-layer))

(cffi:defcfun ("dWorldSetContactSurfaceLayer"
               %ode::world-set-contact-surface-layer)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::depth %ode::real))

(declaim (inline %ode::world-set-damping))

(cffi:defcfun ("dWorldSetDamping" %ode::world-set-damping)
              :void
              (%ode::w %ode::world-id)
              (%ode::linear-scale %ode::real)
              (%ode::angular-scale %ode::real))

(declaim (inline %ode::world-set-data))

(cffi:defcfun ("dWorldSetData" %ode::world-set-data)
              :void
              (%ode::world %ode::world-id)
              (%ode::data (claw-utils:claw-pointer :void)))

(declaim (inline %ode::world-set-erp))

(cffi:defcfun ("dWorldSetERP" %ode::world-set-erp)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::erp %ode::real))

(declaim (inline %ode::world-set-gravity))

(cffi:defcfun ("dWorldSetGravity" %ode::world-set-gravity)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::world-set-linear-damping))

(cffi:defcfun ("dWorldSetLinearDamping"
               %ode::world-set-linear-damping)
              :void
              (%ode::w %ode::world-id)
              (%ode::scale %ode::real))

(declaim (inline %ode::world-set-linear-damping-threshold))

(cffi:defcfun ("dWorldSetLinearDampingThreshold"
               %ode::world-set-linear-damping-threshold)
              :void
              (%ode::w %ode::world-id)
              (%ode::threshold %ode::real))

(declaim (inline %ode::world-set-max-angular-speed))

(cffi:defcfun ("dWorldSetMaxAngularSpeed"
               %ode::world-set-max-angular-speed)
              :void
              (%ode::w %ode::world-id)
              (%ode::max-speed %ode::real))

(declaim (inline %ode::world-set-quick-step-num-iterations))

(cffi:defcfun ("dWorldSetQuickStepNumIterations"
               %ode::world-set-quick-step-num-iterations)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::num :int))

(declaim (inline %ode::world-set-quick-step-w))

(cffi:defcfun ("dWorldSetQuickStepW" %ode::world-set-quick-step-w)
              :void
              (%ode::arg0 %ode::world-id)
              (%ode::over-relaxation %ode::real))

(declaim (inline
          %ode::world-set-step-islands-processing-max-thread-count))

(cffi:defcfun ("dWorldSetStepIslandsProcessingMaxThreadCount"
               %ode::world-set-step-islands-processing-max-thread-count)
              :void
              (%ode::w %ode::world-id)
              (%ode::count :unsigned-int))

(cffi:defcstruct (%ode::|C:@SA@D-WORLD-STEP-MEMORY-FUNCTIONS-INFO|
                  :size 32)
                 (%ode::struct-size :unsigned-int :offset 0)
                 (%ode::alloc-block (claw-utils:claw-pointer :void)
                  :offset 8)
                 (%ode::shrink-block (claw-utils:claw-pointer :void)
                  :offset 16)
                 (%ode::free-block (claw-utils:claw-pointer :void)
                  :offset 24))

(cffi:defctype %ode::world-step-memory-functions-info
               (:struct
                %ode::|C:@SA@D-WORLD-STEP-MEMORY-FUNCTIONS-INFO|))

(declaim (inline %ode::world-set-step-memory-manager))

(cffi:defcfun ("dWorldSetStepMemoryManager"
               %ode::world-set-step-memory-manager)
              :int
              (%ode::w %ode::world-id)
              (%ode::memfuncs
               (claw-utils:claw-pointer
                %ode::world-step-memory-functions-info)))

(cffi:defcstruct (%ode::|C:@SA@D-WORLD-STEP-RESERVE-INFO| :size 12)
                 (%ode::struct-size :unsigned-int :offset 0)
                 (%ode::reserve-factor :float :offset 4)
                 (%ode::reserve-minimum :unsigned-int :offset 8))

(cffi:defctype %ode::world-step-reserve-info
               (:struct %ode::|C:@SA@D-WORLD-STEP-RESERVE-INFO|))

(declaim (inline %ode::world-set-step-memory-reservation-policy))

(cffi:defcfun ("dWorldSetStepMemoryReservationPolicy"
               %ode::world-set-step-memory-reservation-policy)
              :int
              (%ode::w %ode::world-id)
              (%ode::policyinfo
               (claw-utils:claw-pointer
                %ode::world-step-reserve-info)))

(declaim (inline %ode::world-set-step-threading-implementation))

(cffi:defcfun ("dWorldSetStepThreadingImplementation"
               %ode::world-set-step-threading-implementation)
              :void
              (%ode::w %ode::world-id)
              (%ode::functions-info
               (claw-utils:claw-pointer
                %ode::threading-functions-info))
              (%ode::threading-impl
               %ode::threading-implementation-id))

(declaim (inline %ode::world-step))

(cffi:defcfun ("dWorldStep" %ode::world-step)
              :int
              (%ode::w %ode::world-id)
              (%ode::stepsize %ode::real))

(declaim (inline %ode::world-use-shared-working-memory))

(cffi:defcfun ("dWorldUseSharedWorkingMemory"
               %ode::world-use-shared-working-memory)
              :int
              (%ode::w %ode::world-id)
              (%ode::from-world %ode::world-id))

(cffi:defcstruct (%ode::x-call-releasee :size 0))

(cffi:defcstruct (%ode::x-call-wait :size 0))

(cffi:defcstruct (%ode::x-mutex-group :size 0))

(cffi:defctype %ode::time-t :long)

(cffi:defcstruct (%ode::x-threaded-wait-time :size 16)
                 (%ode::wait-sec %ode::time-t :offset 0)
                 (%ode::wait-nsec :unsigned-long :offset 8))

(cffi:defctype %ode::dynamics-axis %ode::|C:@EA@D-DYNAMICS-AXIS|)

(cffi:defctype %ode::mat3element %ode::|C:@EA@D-MAT3ELEMENT|)

(cffi:defctype %ode::mat4element %ode::|C:@EA@D-MAT4ELEMENT|)

(cffi:defctype %ode::mesh-triangle-vertex
               %ode::|C:@EA@D-MESH-TRIANGLE-VERTEX|)

(cffi:defctype %ode::motion-dynamics %ode::|C:@EA@D-MOTION-DYNAMICS|)

(cffi:defctype %ode::quat-element %ode::|C:@EA@D-QUAT-ELEMENT|)

(cffi:defctype %ode::space-axis %ode::|C:@EA@D-SPACE-AXIS|)

(cffi:defctype %ode::vec3element %ode::|C:@EA@D-VEC3ELEMENT|)

(cffi:defctype %ode::vec4element %ode::|C:@EA@D-VEC4ELEMENT|)

(declaim (inline %ode::max))

(cffi:defcfun ("dMax" %ode::max)
              %ode::real
              (%ode::x %ode::real)
              (%ode::y %ode::real))

(declaim (inline %ode::min))

(cffi:defcfun ("dMin" %ode::min)
              %ode::real
              (%ode::x %ode::real)
              (%ode::y %ode::real))

(cffi:defctype %ode::matrix6 (claw-utils:claw-array :float 48))

(declaim (inline %ode::add-scaled-vectors3))

(cffi:defcfun ("dAddScaledVectors3" %ode::add-scaled-vectors3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::a-scale %ode::real)
              (%ode::b-scale %ode::real))

(declaim (inline %ode::add-three-scaled-vectors3))

(cffi:defcfun ("dAddThreeScaledVectors3"
               %ode::add-three-scaled-vectors3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::c (claw-utils:claw-pointer %ode::real))
              (%ode::a-scale %ode::real)
              (%ode::b-scale %ode::real)
              (%ode::c-scale %ode::real))

(declaim (inline %ode::add-vector-cross3))

(cffi:defcfun ("dAddVectorCross3" %ode::add-vector-cross3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::add-vector-scaled-vector3))

(cffi:defcfun ("dAddVectorScaledVector3"
               %ode::add-vector-scaled-vector3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real))
              (%ode::b-scale %ode::real))

(declaim (inline %ode::add-vectors3))

(cffi:defcfun ("dAddVectors3" %ode::add-vectors3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::assign-vector3))

(cffi:defcfun ("dAssignVector3" %ode::assign-vector3)
              :void
              (%ode::res %ode::vector3)
              (%ode::x %ode::real)
              (%ode::y %ode::real)
              (%ode::z %ode::real))

(declaim (inline %ode::calc-matrix3det))

(cffi:defcfun ("dCalcMatrix3Det" %ode::calc-matrix3det)
              %ode::real
              (%ode::mat (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-point-depth3))

(cffi:defcfun ("dCalcPointDepth3" %ode::calc-point-depth3)
              %ode::real
              (%ode::test-p (claw-utils:claw-pointer %ode::real))
              (%ode::plane-p (claw-utils:claw-pointer %ode::real))
              (%ode::plane-n (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-points-distance3))

(cffi:defcfun ("dCalcPointsDistance3" %ode::calc-points-distance3)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-cross3))

(cffi:defcfun ("dCalcVectorCross3" %ode::calc-vector-cross3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-cross3-114))

(cffi:defcfun ("dCalcVectorCross3_114" %ode::calc-vector-cross3-114)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-cross3-141))

(cffi:defcfun ("dCalcVectorCross3_141" %ode::calc-vector-cross3-141)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-cross3-144))

(cffi:defcfun ("dCalcVectorCross3_144" %ode::calc-vector-cross3-144)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-cross3-411))

(cffi:defcfun ("dCalcVectorCross3_411" %ode::calc-vector-cross3-411)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-cross3-414))

(cffi:defcfun ("dCalcVectorCross3_414" %ode::calc-vector-cross3-414)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-cross3-441))

(cffi:defcfun ("dCalcVectorCross3_441" %ode::calc-vector-cross3-441)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-cross3-444))

(cffi:defcfun ("dCalcVectorCross3_444" %ode::calc-vector-cross3-444)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-dot3))

(cffi:defcfun ("dCalcVectorDot3" %ode::calc-vector-dot3)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-dot3-13))

(cffi:defcfun ("dCalcVectorDot3_13" %ode::calc-vector-dot3-13)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-dot3-14))

(cffi:defcfun ("dCalcVectorDot3_14" %ode::calc-vector-dot3-14)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-dot3-31))

(cffi:defcfun ("dCalcVectorDot3_31" %ode::calc-vector-dot3-31)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-dot3-33))

(cffi:defcfun ("dCalcVectorDot3_33" %ode::calc-vector-dot3-33)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-dot3-41))

(cffi:defcfun ("dCalcVectorDot3_41" %ode::calc-vector-dot3-41)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-dot3-44))

(cffi:defcfun ("dCalcVectorDot3_44" %ode::calc-vector-dot3-44)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-length3))

(cffi:defcfun ("dCalcVectorLength3" %ode::calc-vector-length3)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::calc-vector-length-square3))

(cffi:defcfun ("dCalcVectorLengthSquare3"
               %ode::calc-vector-length-square3)
              %ode::real
              (%ode::a (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::copy-matrix4x3))

(cffi:defcfun ("dCopyMatrix4x3" %ode::copy-matrix4x3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::copy-matrix4x4))

(cffi:defcfun ("dCopyMatrix4x4" %ode::copy-matrix4x4)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::copy-negated-vector3))

(cffi:defcfun ("dCopyNegatedVector3" %ode::copy-negated-vector3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::copy-scaled-vector3))

(cffi:defcfun ("dCopyScaledVector3" %ode::copy-scaled-vector3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n-scale %ode::real))

(declaim (inline %ode::copy-vector3))

(cffi:defcfun ("dCopyVector3" %ode::copy-vector3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::copy-vector4))

(cffi:defcfun ("dCopyVector4" %ode::copy-vector4)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::get-matrix-column3))

(cffi:defcfun ("dGetMatrixColumn3" %ode::get-matrix-column3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::n :unsigned-int))

(declaim (inline %ode::invert-matrix3))

(cffi:defcfun ("dInvertMatrix3" %ode::invert-matrix3)
              %ode::real
              (%ode::dst (claw-utils:claw-pointer %ode::real))
              (%ode::ma (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply0-133))

(cffi:defcfun ("dMultiply0_133" %ode::multiply0-133)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply0-331))

(cffi:defcfun ("dMultiply0_331" %ode::multiply0-331)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply0-333))

(cffi:defcfun ("dMultiply0_333" %ode::multiply0-333)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply1-331))

(cffi:defcfun ("dMultiply1_331" %ode::multiply1-331)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply1-333))

(cffi:defcfun ("dMultiply1_333" %ode::multiply1-333)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply2-333))

(cffi:defcfun ("dMultiply2_333" %ode::multiply2-333)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-add0-133))

(cffi:defcfun ("dMultiplyAdd0_133" %ode::multiply-add0-133)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-add0-331))

(cffi:defcfun ("dMultiplyAdd0_331" %ode::multiply-add0-331)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-add0-333))

(cffi:defcfun ("dMultiplyAdd0_333" %ode::multiply-add0-333)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-add1-331))

(cffi:defcfun ("dMultiplyAdd1_331" %ode::multiply-add1-331)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-add1-333))

(cffi:defcfun ("dMultiplyAdd1_333" %ode::multiply-add1-333)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-add2-333))

(cffi:defcfun ("dMultiplyAdd2_333" %ode::multiply-add2-333)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-helper0-133))

(cffi:defcfun ("dMultiplyHelper0_133" %ode::multiply-helper0-133)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-helper0-331))

(cffi:defcfun ("dMultiplyHelper0_331" %ode::multiply-helper0-331)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-helper1-133))

(cffi:defcfun ("dMultiplyHelper1_133" %ode::multiply-helper1-133)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::multiply-helper1-331))

(cffi:defcfun ("dMultiplyHelper1_331" %ode::multiply-helper1-331)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::negate-vector3))

(cffi:defcfun ("dNegateVector3" %ode::negate-vector3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::scale-vector3))

(cffi:defcfun ("dScaleVector3" %ode::scale-vector3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::n-scale %ode::real))

(declaim (inline %ode::set-cross-matrix-minus))

(cffi:defcfun ("dSetCrossMatrixMinus" %ode::set-cross-matrix-minus)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::skip :unsigned-int))

(declaim (inline %ode::set-cross-matrix-plus))

(cffi:defcfun ("dSetCrossMatrixPlus" %ode::set-cross-matrix-plus)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::skip :unsigned-int))

(declaim (inline %ode::subtract-vector-cross3))

(cffi:defcfun ("dSubtractVectorCross3" %ode::subtract-vector-cross3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::subtract-vectors3))

(cffi:defcfun ("dSubtractVectors3" %ode::subtract-vectors3)
              :void
              (%ode::res (claw-utils:claw-pointer %ode::real))
              (%ode::a (claw-utils:claw-pointer %ode::real))
              (%ode::b (claw-utils:claw-pointer %ode::real)))

(declaim (inline %ode::zero-matrix3))

(cffi:defcfun ("dZeroMatrix3" %ode::zero-matrix3)
              :void
              (%ode::res %ode::matrix3))

(declaim (inline %ode::zero-matrix4))

(cffi:defcfun ("dZeroMatrix4" %ode::zero-matrix4)
              :void
              (%ode::res %ode::matrix4))

(declaim (inline %ode::zero-vector3))

(cffi:defcfun ("dZeroVector3" %ode::zero-vector3)
              :void
              (%ode::res %ode::vector3))

(cffi:defctype %ode::call-releasee-id
               (claw-utils:claw-pointer
                (:struct %ode::x-call-releasee)))

(cffi:defctype %ode::call-wait-id
               (claw-utils:claw-pointer (:struct %ode::x-call-wait)))

(cffi:defctype %ode::mutex-group-id
               (claw-utils:claw-pointer
                (:struct %ode::x-mutex-group)))

(cffi:defctype %ode::threaded-call-function :void)

(cffi:defctype %ode::threaded-wait-time
               (:struct %ode::x-threaded-wait-time))

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%ode::joint-disable :%ode)
  (export '%ode::+d-err-iassert+ :%ode)
  (export '%ode::%codecvt :%ode)
  (export '%ode::+infinity+ :%ode)
  (export '%ode::mu :%ode)
  (export '%ode::free-mutex-group :%ode)
  (export '%ode::+param-f-max2+ :%ode)
  (export '%ode::+param-fudge-factor2+ :%ode)
  (export '%ode::joint-set-d-ball-distance :%ode)
  (export '%ode::multiply1-331 :%ode)
  (export '%ode::mass :%ode)
  (export '%ode::matrix4 :%ode)
  (export '%ode::+trimeshdata-use-flags+ :%ode)
  (export '%ode::resource-container-id :%ode)
  (export '%ode::calc-vector-cross3-144 :%ode)
  (export '%ode::world-step :%ode)
  (export '%ode::mass-set-sphere-total :%ode)
  (export '%ode::+tridatapreprocess-face-angles-extra-word-all+
          :%ode)
  (export '%ode::cooperative-create :%ode)
  (export '%ode::joint-set-d-hinge-param :%ode)
  (export '%ode::+d-err-unknown+ :%ode)
  (export '%ode::joint-set-ball-anchor :%ode)
  (export '%ode::t1 :%ode)
  (export '%ode::joint-get-slider-axis :%ode)
  (export '%ode::world-get-quick-step-w :%ode)
  (export '%ode::post-call :%ode)
  (export '%ode::g2 :%ode)
  (export '%ode::body-is-enabled :%ode)
  (export '%ode::q-multiply0 :%ode)
  (export '%ode::geom-heightfield-data-build-short :%ode)
  (export '%ode::x-resource-container :%ode)
  (export '%ode::+a-motor-user+ :%ode)
  (export '%ode::joint-create-null :%ode)
  (export '%ode::get-configuration :%ode)
  (export '%ode::geom-copy-offset-rotation :%ode)
  (export '%ode::multiply-add2-333 :%ode)
  (export '%ode::%vtable-offset :%ode)
  (export '%ode::max-difference-lower-triangle :%ode)
  (export '%ode::body-set-data :%ode)
  (export '%ode::contact-geom :%ode)
  (export '%ode::world-id :%ode)
  (export '%ode::geom-tri-mesh-data-build-double1 :%ode)
  (export '%ode::create-box :%ode)
  (export '%ode::body-get-auto-disable-angular-threshold :%ode)
  (export '%ode::world-get-step-islands-processing-max-thread-count
          :%ode)
  (export '%ode::calc-vector-dot3-44 :%ode)
  (export '%ode::geom-ray-get-backface-cull :%ode)
  (export '%ode::body-get-force :%ode)
  (export '%ode::joint-get-num-bodies :%ode)
  (export '%ode::infinite-aabb :%ode)
  (export '%ode::joint-get-transmission-angle2 :%ode)
  (export '%ode::|C:@EA@D-QUAT-ELEMENT| :%ode)
  (export '%ode::|C:@EA@D-DYNAMICS-AXIS| :%ode)
  (export '%ode::normalize3 :%ode)
  (export '%ode::%old-offset :%ode)
  (export '%ode::threaded-call-wait-free-function :%ode)
  (export '%ode::geom-ray-set-params :%ode)
  (export '%ode::slip1 :%ode)
  (export '%ode::joint-set-universal-param :%ode)
  (export '%ode::geom-tri-mesh-get-triangle-count :%ode)
  (export '%ode::+param-stop-erp2+ :%ode)
  (export '%ode::multiply0 :%ode)
  (export '%ode::body-set-linear-damping-threshold :%ode)
  (export '%ode::geom-plane-set-params :%ode)
  (export '%ode::+param-hi-stop3+ :%ode)
  (export '%ode::vec4element :%ode)
  (export '%ode::+param-suspension-cfm2+ :%ode)
  (export '%ode::joint-get-transmission-angle1 :%ode)
  (export '%ode::joint-get-hinge2anchor2 :%ode)
  (export '%ode::+contact-f-dir1+ :%ode)
  (export '%ode::rand :%ode)
  (export '%ode::+param-erp2+ :%ode)
  (export '%ode::make-random-matrix :%ode)
  (export '%ode::invert-pd-matrix :%ode)
  (export '%ode::space-query :%ode)
  (export '%ode::create-geom-transform :%ode)
  (export '%ode::space-clean :%ode)
  (export '%ode::geom-set-offset-world-rotation :%ode)
  (export '%ode::contact :%ode)
  (export '%ode::add-vector-cross3 :%ode)
  (export '%ode::joint-get-pu-angle1 :%ode)
  (export '%ode::%flags2 :%ode)
  (export '%ode::world-get-auto-disable-average-samples-count :%ode)
  (export '%ode::joint-add-slider-force :%ode)
  (export '%ode::x-joint-group :%ode)
  (export '%ode::cooperatively-solve-l1transposed :%ode)
  (export '%ode::joint-set-transmission-axis :%ode)
  (export '%ode::+param-hi-stop2+ :%ode)
  (export '%ode::geom-set-offset-world-quaternion :%ode)
  (export '%ode::mutex-group-free-function :%ode)
  (export '%ode::%%off64-t :%ode)
  (export '%ode::bounce :%ode)
  (export '%ode::joint-set-plane2d-angle-param :%ode)
  (export '%ode::multiply-add0-331 :%ode)
  (export '%ode::calc-vector-cross3-141 :%ode)
  (export '%ode::joint-set-d-ball-anchor1 :%ode)
  (export '%ode::calc-vector-dot3-41 :%ode)
  (export '%ode::joint-set-pu-param :%ode)
  (export '%ode::joint-create-transmission :%ode)
  (export '%ode::world-get-cfm :%ode)
  (export '%ode::+param-bounce2+ :%ode)
  (export '%ode::geom-tri-mesh-data-build-simple1 :%ode)
  (export '%ode::+param-suspension-erp1+ :%ode)
  (export '%ode::joint-set-pu-anchor-delta :%ode)
  (export '%ode::%io-file :%ode)
  (export '%ode::make-random-vector :%ode)
  (export '%ode::+meshdatause-vertex3+ :%ode)
  (export '%ode::body-add-rel-force-at-pos :%ode)
  (export '%ode::+transmission-intersecting-axes+ :%ode)
  (export '%ode::multiply0-331 :%ode)
  (export '%ode::joint-set-ball-anchor2 :%ode)
  (export '%ode::tri-ray-callback :%ode)
  (export '%ode::create-tri-mesh :%ode)
  (export '%ode::%io-read-base :%ode)
  (export '%ode::joint-set-piston-axis :%ode)
  (export '%ode::joint-set-slider-axis-delta :%ode)
  (export '%ode::message :%ode)
  (export '%ode::geom-tri-mesh-get-last-transform :%ode)
  (export '%ode::%offset :%ode)
  (export '%ode::multiply-helper0-133 :%ode)
  (export '%ode::+d-err-uassert+ :%ode)
  (export '%ode::joint-set-d-hinge-anchor1 :%ode)
  (export '%ode::body-add-rel-force-at-rel-pos :%ode)
  (export '%ode::set-cross-matrix-plus :%ode)
  (export '%ode::body-set-angular-vel :%ode)
  (export '%ode::check-configuration :%ode)
  (export '%ode::+param-erp+ :%ode)
  (export '%ode::body-set-damping-defaults :%ode)
  (export '%ode::body-get-auto-disable-linear-threshold :%ode)
  (export '%ode::threading-thread-pool-wait-idle-state :%ode)
  (export '%ode::joint-get-universal-angle2rate :%ode)
  (export '%ode::joint-create-hinge2 :%ode)
  (export '%ode::q-from-axis-and-angle :%ode)
  (export '%ode::+last-space-class+ :%ode)
  (export '%ode::min :%ode)
  (export '%ode::body-get-angular-vel :%ode)
  (export '%ode::geom-ray-get :%ode)
  (export '%ode::geom-ray-set :%ode)
  (export '%ode::space-destroy :%ode)
  (export '%ode::mass-set-capped-cylinder :%ode)
  (export '%ode::geom-get-category-bits :%ode)
  (export '%ode::i :%ode)
  (export '%ode::+param-vel+ :%ode)
  (export '%ode::joint-set-a-motor-param :%ode)
  (export '%ode::closest-line-segment-points :%ode)
  (export '%ode::+contact-approx1-2+ :%ode)
  (export '%ode::joint-create-piston :%ode)
  (export '%ode::+param-stop-cfm+ :%ode)
  (export '%ode::create-convex :%ode)
  (export '%ode::geom-tri-mesh-is-tc-enabled :%ode)
  (export '%ode::geom-cylinder-set-params :%ode)
  (export '%ode::body-add-torque :%ode)
  (export '%ode::r-from-axis-and-angle :%ode)
  (export '%ode::body-get-linear-vel :%ode)
  (export '%ode::+param-lo-vel1+ :%ode)
  (export '%ode::body-get-rel-point-vel :%ode)
  (export '%ode::joint-get-pu-axis3 :%ode)
  (export '%ode::geom-tri-mesh-data-get-buffer :%ode)
  (export '%ode::geom-ray-set-closest-hit :%ode)
  (export '%ode::+cylinder-class+ :%ode)
  (export '%ode::geom-ray-get-first-contact :%ode)
  (export '%ode::+transmission-parallel-axes+ :%ode)
  (export '%ode::+param-lo-vel3+ :%ode)
  (export '%ode::world-get-angular-damping-threshold :%ode)
  (export '%ode::body-set-max-angular-speed :%ode)
  (export '%ode::body-get-mass :%ode)
  (export '%ode::x-world :%ode)
  (export '%ode::joint-set-universal-axis2offset :%ode)
  (export '%ode::+param-stop-cfm2+ :%ode)
  (export '%ode::%io-codecvt :%ode)
  (export '%ode::set-alloc-handler :%ode)
  (export '%ode::unlock-group-mutex :%ode)
  (export '%ode::+trimeshdata-face-normals+ :%ode)
  (export '%ode::geom-tri-mesh-data-destroy :%ode)
  (export '%ode::geom-get-rel-point-pos :%ode)
  (export '%ode::aabb-test-fn :%ode)
  (export '%ode::mass-set-zero :%ode)
  (export '%ode::joint-get-piston-anchor2 :%ode)
  (export '%ode::retrieve-thread-count :%ode)
  (export '%ode::+last-user-class+ :%ode)
  (export '%ode::threading-thread-pool-id :%ode)
  (export '%ode::set-collider-override :%ode)
  (export '%ode::+tridatapreprocess-face-angles-extra-byte-all+
          :%ode)
  (export '%ode::joint-get-hinge-axis :%ode)
  (export '%ode::threading-thread-pool-serve-multi-threaded-implementation
          :%ode)
  (export '%ode::+tridatapreprocess-build-concave-edges+ :%ode)
  (export '%ode::+param-fudge-factor+ :%ode)
  (export '%ode::joint-set-pu-axis3 :%ode)
  (export '%ode::+ray-class+ :%ode)
  (export '%ode::joint-get-pr-angle-rate :%ode)
  (export '%ode::space-get-num-geoms :%ode)
  (export '%ode::geom-set-body :%ode)
  (export '%ode::quad-tree-space-create :%ode)
  (export '%ode::world-set-auto-disable-angular-threshold :%ode)
  (export '%ode::factor-ldlt :%ode)
  (export '%ode::joint-add-a-motor-torques :%ode)
  (export '%ode::geom-get-quaternion :%ode)
  (export '%ode::%io-backup-base :%ode)
  (export '%ode::simple-space-create :%ode)
  (export '%ode::world-use-shared-working-memory :%ode)
  (export '%ode::mat4element :%ode)
  (export '%ode::body-id :%ode)
  (export '%ode::joint-add-pu-torque :%ode)
  (export '%ode::+tridatapreprocess-build-face-angles+ :%ode)
  (export '%ode::+param-group2+ :%ode)
  (export '%ode::+sap-axes-yxz+ :%ode)
  (export '%ode::joint-get-a-motor-angle :%ode)
  (export '%ode::calc-vector-cross3-441 :%ode)
  (export '%ode::body-set-torque :%ode)
  (export '%ode::geom-ray-get-params :%ode)
  (export '%ode::joint-get-a-motor-param :%ode)
  (export '%ode::geom-tri-mesh-set-array-callback :%ode)
  (export '%ode::geom-sphere-point-depth :%ode)
  (export '%ode::%flags :%ode)
  (export '%ode::normalize4 :%ode)
  (export '%ode::world-set-auto-disable-average-samples-count :%ode)
  (export '%ode::call-releasee-id :%ode)
  (export '%ode::joint-get-pu-axis2 :%ode)
  (export '%ode::+fp-subnormal+ :%ode)
  (export '%ode::geom-tri-mesh-get-ray-callback :%ode)
  (export '%ode::body-set-quaternion :%ode)
  (export '%ode::tri-tri-merge-callback :%ode)
  (export '%ode::geom-get-offset-rotation :%ode)
  (export '%ode::+worldstep-reservesize-default+ :%ode)
  (export '%ode::+transmission-chain-drive+ :%ode)
  (export '%ode::world-impulse-to-force :%ode)
  (export '%ode::threading-allocate-thread-pool :%ode)
  (export '%ode::%io-buf-end :%ode)
  (export '%ode::r-set-identity :%ode)
  (export '%ode::world-set-auto-disable-linear-threshold :%ode)
  (export '%ode::stopwatch-time :%ode)
  (export '%ode::+param-vel3+ :%ode)
  (export '%ode::body-get-rotation :%ode)
  (export '%ode::geom-destroy :%ode)
  (export '%ode::world-get-quick-step-num-iterations :%ode)
  (export '%ode::joint-get-slider-position-rate :%ode)
  (export '%ode::x-heightfield-data :%ode)
  (export '%ode::geom-get-class-data :%ode)
  (export '%ode::geom-set-data :%ode)
  (export '%ode::body-set-angular-damping-threshold :%ode)
  (export '%ode::geom-get-data :%ode)
  (export '%ode::threading-impl-resources-for-calls-preallocate-function
          :%ode)
  (export '%ode::cleanup-ode-all-data-for-thread :%ode)
  (export '%ode::threaded-call-dependencies-count-alter-function
          :%ode)
  (export '%ode::stopwatch-stop :%ode)
  (export '%ode::body-vector-from-world :%ode)
  (export '%ode::joint-create-universal :%ode)
  (export '%ode::collider :%ode)
  (export '%ode::+param-suspension-erp3+ :%ode)
  (export '%ode::q-set-identity :%ode)
  (export '%ode::joint-set-pu-anchor-offset :%ode)
  (export '%ode::tri-array-callback :%ode)
  (export '%ode::mutex-group-alloc-function :%ode)
  (export '%ode::+param-suspension-cfm1+ :%ode)
  (export '%ode::body-set-force :%ode)
  (export '%ode::geom-heightfield-data-set-bounds :%ode)
  (export '%ode::+sphere-class+ :%ode)
  (export '%ode::motion-dynamics :%ode)
  (export '%ode::joint-get-universal-axis2 :%ode)
  (export '%ode::world-quick-step :%ode)
  (export '%ode::mass-set-cylinder :%ode)
  (export '%ode::add-three-scaled-vectors3 :%ode)
  (export '%ode::joint-set-hinge-axis :%ode)
  (export '%ode::joint-get-d-hinge-param :%ode)
  (export '%ode::joint-set-piston-anchor :%ode)
  (export '%ode::mass-check :%ode)
  (export '%ode::create-cylinder :%ode)
  (export '%ode::+param-stop-erp3+ :%ode)
  (export '%ode::body-get-max-angular-speed :%ode)
  (export '%ode::body-add-force-at-pos :%ode)
  (export '%ode::world-cleanup-working-memory :%ode)
  (export '%ode::%markers :%ode)
  (export '%ode::world-set-contact-surface-layer :%ode)
  (export '%ode::geom-heightfield-get-heightfield-data :%ode)
  (export '%ode::reset-call-wait :%ode)
  (export '%ode::allocate-ode-data-flags :%ode)
  (export '%ode::dintptr :%ode)
  (export '%ode::cooperatively-factor-ldlt :%ode)
  (export '%ode::geom-heightfield-data-build-single :%ode)
  (export '%ode::geom-capsule-point-depth :%ode)
  (export '%ode::joint-get-transmission-param :%ode)
  (export '%ode::resource-requirements-clone :%ode)
  (export '%ode::%io-write-ptr :%ode)
  (export '%ode::joint-set-pr-param :%ode)
  (export '%ode::geom-set-offset-rotation :%ode)
  (export '%ode::motion1 :%ode)
  (export '%ode::threading-free-thread-pool :%ode)
  (export '%ode::+box-class+ :%ode)
  (export '%ode::multiply2-333 :%ode)
  (export '%ode::set-cross-matrix-minus :%ode)
  (export '%ode::joint-create-a-motor :%ode)
  (export '%ode::body-set-linear-vel :%ode)
  (export '%ode::d-qfrom-w :%ode)
  (export '%ode::geom-copy-rotation :%ode)
  (export '%ode::error :%ode)
  (export '%ode::+meshdatause-vertex1+ :%ode)
  (export '%ode::joint-get-pr-anchor :%ode)
  (export '%ode::threaded-call-wait-alloc-function :%ode)
  (export '%ode::+na-n+ :%ode)
  (export '%ode::world-get-auto-disable-steps :%ode)
  (export '%ode::joint-get-hinge2anchor :%ode)
  (export '%ode::space-get-sublevel :%ode)
  (export '%ode::body-set-gyroscopic-mode :%ode)
  (export '%ode::%chain :%ode)
  (export '%ode::zero-matrix4 :%ode)
  (export '%ode::joint-add-hinge-torque :%ode)
  (export '%ode::+contact-rolling+ :%ode)
  (export '%ode::world-set-auto-disable-time :%ode)
  (export '%ode::body-set-auto-disable-defaults :%ode)
  (export '%ode::body-set-auto-disable-angular-threshold :%ode)
  (export '%ode::joint-set-feedback :%ode)
  (export '%ode::world-set-cfm :%ode)
  (export '%ode::joint-set-hinge-param :%ode)
  (export '%ode::cooperative-destroy :%ode)
  (export '%ode::%io-save-base :%ode)
  (export '%ode::geom-heightfield-data-destroy :%ode)
  (export '%ode::world-get-gravity :%ode)
  (export '%ode::connecting-joint :%ode)
  (export '%ode::joint-group-create :%ode)
  (export '%ode::box-touches-box :%ode)
  (export '%ode::joint-get-d-ball-anchor1 :%ode)
  (export '%ode::body-destroy :%ode)
  (export '%ode::world-get-erp :%ode)
  (export '%ode::world-set-linear-damping :%ode)
  (export '%ode::copy-vector4 :%ode)
  (export '%ode::+contact-motion1+ :%ode)
  (export '%ode::joint-get-pu-position :%ode)
  (export '%ode::+meshdatause-edge1+ :%ode)
  (export '%ode::joint-get-transmission-radius2 :%ode)
  (export '%ode::joint-get-universal-angle1rate :%ode)
  (export '%ode::world-get-auto-disable-angular-threshold :%ode)
  (export '%ode::joint-create-pu :%ode)
  (export '%ode::geom-tri-mesh-data-get2 :%ode)
  (export '%ode::body-get-auto-disable-flag :%ode)
  (export '%ode::joint-set-transmission-backlash :%ode)
  (export '%ode::mu2 :%ode)
  (export '%ode::geom-box-get-lengths :%ode)
  (export '%ode::resource-requirements-create :%ode)
  (export '%ode::alloc-block :%ode)
  (export '%ode::space-axis :%ode)
  (export '%ode::+contact-approx0+ :%ode)
  (export '%ode::+param-lo-stop1+ :%ode)
  (export '%ode::+param-bounce1+ :%ode)
  (export '%ode::%io-lock-t :%ode)
  (export '%ode::mutex-group-id :%ode)
  (export '%ode::r-from-z-axis :%ode)
  (export '%ode::calc-vector-dot3-31 :%ode)
  (export '%ode::+trimesh-face-normals+ :%ode)
  (export '%ode::geom-disable :%ode)
  (export '%ode::create-sphere :%ode)
  (export '%ode::get-realloc-handler :%ode)
  (export '%ode::%unused2 :%ode)
  (export '%ode::body-create :%ode)
  (export '%ode::geom-tri-mesh-data-build-single :%ode)
  (export '%ode::+trimeshdata--max+ :%ode)
  (export '%ode::scale-vector3 :%ode)
  (export '%ode::joint-set-hinge-anchor :%ode)
  (export '%ode::joint-get-pr-position :%ode)
  (export '%ode::joint-get-pu-anchor :%ode)
  (export '%ode::geom-get-aabb :%ode)
  (export '%ode::threading-implementation-id :%ode)
  (export '%ode::test-rand :%ode)
  (export '%ode::connecting-joint-list :%ode)
  (export '%ode::world-get-auto-disable-linear-threshold :%ode)
  (export '%ode::body-add-rel-torque :%ode)
  (export '%ode::+params-in-group+ :%ode)
  (export '%ode::message-function :%ode)
  (export '%ode::joint-set-pr-axis2 :%ode)
  (export '%ode::geom-heightfield-data-build-byte :%ode)
  (export '%ode::+sap-axes-yzx+ :%ode)
  (export '%ode::joint-set-d-ball-param :%ode)
  (export '%ode::joint-get-d-ball-anchor2 :%ode)
  (export '%ode::multiply2 :%ode)
  (export '%ode::realloc-function :%ode)
  (export '%ode::geom-get-rotation :%ode)
  (export '%ode::joint-set-ball-param :%ode)
  (export '%ode::%io-read-ptr :%ode)
  (export '%ode::joint-set-fixed :%ode)
  (export '%ode::+param-suspension-cfm+ :%ode)
  (export '%ode::%cur-column :%ode)
  (export '%ode::+hash-space-class+ :%ode)
  (export '%ode::wait-sec :%ode)
  (export '%ode::body-get-gyroscopic-mode :%ode)
  (export '%ode::mass-set-trimesh-total :%ode)
  (export '%ode::joint-get-hinge2param :%ode)
  (export '%ode::joint-get-data :%ode)
  (export '%ode::joint-get-transmission-axis2 :%ode)
  (export '%ode::body-get-auto-disable-average-samples-count :%ode)
  (export '%ode::%io-write-end :%ode)
  (export '%ode::cooperatively-scale-vector :%ode)
  (export '%ode::%mode :%ode)
  (export '%ode::+param-vel1+ :%ode)
  (export '%ode::body-get-gravity-mode :%ode)
  (export '%ode::joint-get-universal-anchor2 :%ode)
  (export '%ode::set-zero :%ode)
  (export '%ode::world-set-step-memory-manager :%ode)
  (export '%ode::resource-container-destroy :%ode)
  (export '%ode::+meshdatause-vertex2+ :%ode)
  (export '%ode::mass-set-parameters :%ode)
  (export '%ode::x-body :%ode)
  (export '%ode::world-get-angular-damping :%ode)
  (export '%ode::+param-stop-erp1+ :%ode)
  (export '%ode::+geom-num-classes+ :%ode)
  (export '%ode::fdir1 :%ode)
  (export '%ode::joint-get-transmission-contact-point2 :%ode)
  (export '%ode::%fileno :%ode)
  (export '%ode::allocate-ode-data-for-thread :%ode)
  (export '%ode::sweep-and-prune-space-create :%ode)
  (export '%ode::threading-functions-info :%ode)
  (export '%ode::geom-heightfield-set-heightfield-data :%ode)
  (export '%ode::alloc-mutex-group :%ode)
  (export '%ode::joint-get-piston-position :%ode)
  (export '%ode::+contact-bounce+ :%ode)
  (export '%ode::body-set-position :%ode)
  (export '%ode::create-capsule :%ode)
  (export '%ode::+geom-collider-set-merge-sphere-contacts-control-code+
          :%ode)
  (export '%ode::body-get-pos-rel-point :%ode)
  (export '%ode::space-collide2 :%ode)
  (export '%ode::geom-is-space :%ode)
  (export '%ode::+param-vel2+ :%ode)
  (export '%ode::+contact-axis-dep+ :%ode)
  (export '%ode::+contact-slip1+ :%ode)
  (export '%ode::world-get-contact-surface-layer :%ode)
  (export '%ode::set-message-handler :%ode)
  (export '%ode::+fp-normal+ :%ode)
  (export '%ode::joint-get-transmission-ratio :%ode)
  (export '%ode::geom-tri-mesh-get-tri-merge-callback :%ode)
  (export '%ode::threading-implementation-cleanup-for-restart :%ode)
  (export '%ode::stopwatch-start :%ode)
  (export '%ode::calc-vector-cross3-414 :%ode)
  (export '%ode::space-set-manual-cleanup :%ode)
  (export '%ode::resource-container-acquire :%ode)
  (export '%ode::calc-vector-cross3-411 :%ode)
  (export '%ode::geom-heightfield-data-build-double :%ode)
  (export '%ode::+contact-motion2+ :%ode)
  (export '%ode::+d-err-lcp+ :%ode)
  (export '%ode::x-cooperative :%ode)
  (export '%ode::geom-get-offset-quaternion :%ode)
  (export '%ode::get-free-handler :%ode)
  (export '%ode::geom-transform-set-geom :%ode)
  (export '%ode::+param-hi-stop+ :%ode)
  (export '%ode::x-call-releasee :%ode)
  (export '%ode::calc-vector-cross3 :%ode)
  (export '%ode::+simple-space-class+ :%ode)
  (export '%ode::body-is-kinematic :%ode)
  (export '%ode::init-ode :%ode)
  (export '%ode::world-set-step-threading-implementation :%ode)
  (export '%ode::joint-set-pu-axis2 :%ode)
  (export '%ode::+max-user-classes+ :%ode)
  (export '%ode::x-threaded-wait-time :%ode)
  (export '%ode::+geom-c-cylinder-set-params+ :%ode)
  (export '%ode::bounce-vel :%ode)
  (export '%ode::joint-get-pu-axis1 :%ode)
  (export '%ode::+param-cfm3+ :%ode)
  (export '%ode::set-error-handler :%ode)
  (export '%ode::geom-get-offset-position :%ode)
  (export '%ode::joint-get-d-hinge-anchor2 :%ode)
  (export '%ode::%io-save-end :%ode)
  (export '%ode::joint-set-a-motor-mode :%ode)
  (export '%ode::geom-low-level-control :%ode)
  (export '%ode::geom-ray-get-closest-hit :%ode)
  (export '%ode::q-multiply2 :%ode)
  (export '%ode::geom-capsule-get-params :%ode)
  (export '%ode::estimate-cooperatively-solve-l1transposed-resource-requirements
          :%ode)
  (export '%ode::q-multiply3 :%ode)
  (export '%ode::joint-get-transmission-axis :%ode)
  (export '%ode::joint-add-pr-torque :%ode)
  (export '%ode::joint-set-a-motor-axis :%ode)
  (export '%ode::geom-transform-get-cleanup :%ode)
  (export '%ode::safe-normalize3 :%ode)
  (export '%ode::%io-wide-data :%ode)
  (export '%ode::%io-buf-base :%ode)
  (export '%ode::joint-get-hinge-anchor2 :%ode)
  (export '%ode::world-set-erp :%ode)
  (export '%ode::dsizeint :%ode)
  (export '%ode::dynamics-axis :%ode)
  (export '%ode::+param-fudge-factor3+ :%ode)
  (export '%ode::body-add-force-at-rel-pos :%ode)
  (export '%ode::joint-get-hinge2angle2 :%ode)
  (export '%ode::x-resource-requirements :%ode)
  (export '%ode::zero-matrix3 :%ode)
  (export '%ode::tri-mesh-data-id :%ode)
  (export '%ode::side2 :%ode)
  (export '%ode::+geom-collider-merge-contacts-value-none+ :%ode)
  (export '%ode::world-set-step-islands-processing-max-thread-count
          :%ode)
  (export '%ode::joint-create-d-ball :%ode)
  (export '%ode::joint-group-empty :%ode)
  (export '%ode::geom-tri-mesh-clear-tc-cache :%ode)
  (export '%ode::body-set-finite-rotation-axis :%ode)
  (export '%ode::body-get-angular-damping-threshold :%ode)
  (export '%ode::world-destroy :%ode)
  (export '%ode::matrix6 :%ode)
  (export '%ode::body-set-gravity-mode :%ode)
  (export '%ode::joint-get-universal-anchor :%ode)
  (export '%ode::normal :%ode)
  (export '%ode::mass-set-box :%ode)
  (export '%ode::+param-hi-vel+ :%ode)
  (export '%ode::geom-vector-to-world :%ode)
  (export '%ode::joint-create-ball :%ode)
  (export '%ode::hash-space-set-levels :%ode)
  (export '%ode::+contact-approx1+ :%ode)
  (export '%ode::joint-set-pu-axis-p :%ode)
  (export '%ode::joint-get-hinge2axis1 :%ode)
  (export '%ode::geom-ray-set-first-contact :%ode)
  (export '%ode::stopwatch :%ode)
  (export '%ode::geom-tri-mesh-set-callback :%ode)
  (export '%ode::body-set-auto-disable-flag :%ode)
  (export '%ode::|C:@EA@D-JOINT-TYPE| :%ode)
  (export '%ode::geom-moved :%ode)
  (export '%ode::joint-attach :%ode)
  (export '%ode::%%off-t :%ode)
  (export '%ode::world-step-reserve-info :%ode)
  (export '%ode::space-get-manual-cleanup :%ode)
  (export '%ode::debug :%ode)
  (export '%ode::world-set-step-memory-reservation-policy :%ode)
  (export '%ode::geom-transform-set-info :%ode)
  (export '%ode::+param-f-max+ :%ode)
  (export '%ode::geom-sphere-set-radius :%ode)
  (export '%ode::joint-get-piston-param :%ode)
  (export '%ode::joint-get-ball-param :%ode)
  (export '%ode::joint-get-a-motor-axis :%ode)
  (export '%ode::x-joint :%ode)
  (export '%ode::joint-get-transmission-axis1 :%ode)
  (export '%ode::calc-vector-length-square3 :%ode)
  (export '%ode::joint-set-piston-param :%ode)
  (export '%ode::r-from-euler-angles :%ode)
  (export '%ode::+contact-approx1-n+ :%ode)
  (export '%ode::+threading-thread-count-unlimited+ :%ode)
  (export '%ode::+param-lo-vel+ :%ode)
  (export '%ode::joint-get-transmission-backlash :%ode)
  (export '%ode::joint-create-l-motor :%ode)
  (export '%ode::world-get-auto-disable-time :%ode)
  (export '%ode::body-get-finite-rotation-axis :%ode)
  (export '%ode::+create-c-cylinder+ :%ode)
  (export '%ode::create-ray :%ode)
  (export '%ode::joint-set-hinge2axis2 :%ode)
  (export '%ode::+contact-mu2+ :%ode)
  (export '%ode::pos :%ode)
  (export '%ode::+geom-collider-get-merge-sphere-contacts-control-code+
          :%ode)
  (export '%ode::rho-n :%ode)
  (export '%ode::joint-set-hinge-axis-offset :%ode)
  (export '%ode::body-copy-quaternion :%ode)
  (export '%ode::joint-set-l-motor-param :%ode)
  (export '%ode::geom-tri-mesh-get-point :%ode)
  (export '%ode::geom-class :%ode)
  (export '%ode::+fp-nan+ :%ode)
  (export '%ode::mass-set-trimesh :%ode)
  (export '%ode::+trimeshdata--min+ :%ode)
  (export '%ode::world-get-linear-damping-threshold :%ode)
  (export '%ode::g1 :%ode)
  (export '%ode::copy-matrix4x4 :%ode)
  (export '%ode::geom-set-offset-position :%ode)
  (export '%ode::joint-get-hinge2angle1rate :%ode)
  (export '%ode::world-set-contact-max-correcting-vel :%ode)
  (export '%ode::multiply1-333 :%ode)
  (export '%ode::joint-get-hinge-anchor :%ode)
  (export '%ode::geom :%ode)
  (export '%ode::+contact-motion-n+ :%ode)
  (export '%ode::world-set-angular-damping-threshold :%ode)
  (export '%ode::joint-get-d-hinge-axis :%ode)
  (export '%ode::joint-get-a-motor-num-axes :%ode)
  (export '%ode::+contact-soft-erp+ :%ode)
  (export '%ode::+tridatapreprocess-face-angles-extra--min+ :%ode)
  (export '%ode::|C:@EA@D-MAT4ELEMENT| :%ode)
  (export '%ode::+tridatapreprocess-face-angles-extra--max+ :%ode)
  (export '%ode::joint-get-piston-angle :%ode)
  (export '%ode::calc-vector-cross3-444 :%ode)
  (export '%ode::+contact-slip2+ :%ode)
  (export '%ode::geom-set-collide-bits :%ode)
  (export '%ode::joint-group-id :%ode)
  (export '%ode::x-threading-thread-pool :%ode)
  (export '%ode::body-get-data :%ode)
  (export '%ode::estimate-cooperatively-factor-ldlt-resource-requirements
          :%ode)
  (export '%ode::mass-add :%ode)
  (export '%ode::joint-is-enabled :%ode)
  (export '%ode::alloc :%ode)
  (export '%ode::mesh-triangle-vertex :%ode)
  (export '%ode::world-get-auto-disable-flag :%ode)
  (export '%ode::+plane-class+ :%ode)
  (export '%ode::body-get-linear-damping :%ode)
  (export '%ode::joint-get-transmission-radius1 :%ode)
  (export '%ode::depth :%ode)
  (export '%ode::+heightfield-class+ :%ode)
  (export '%ode::f1 :%ode)
  (export '%ode::size-t :%ode)
  (export '%ode::get-debug-handler :%ode)
  (export '%ode::joint-set-transmission-ratio :%ode)
  (export '%ode::space-get-geom :%ode)
  (export '%ode::free-call-wait :%ode)
  (export '%ode::body-get-finite-rotation-mode :%ode)
  (export '%ode::time-t :%ode)
  (export '%ode::body-set-finite-rotation-mode :%ode)
  (export '%ode::body-set-mass :%ode)
  (export '%ode::alloc-call-wait :%ode)
  (export '%ode::joint-add-piston-force :%ode)
  (export '%ode::joint-get-a-motor-axis-rel :%ode)
  (export '%ode::joint-get-ball-anchor :%ode)
  (export '%ode::set-debug-handler :%ode)
  (export '%ode::joint-set-l-motor-num-axes :%ode)
  (export '%ode::body-get-position :%ode)
  (export '%ode::+sweep-and-prune-space-class+ :%ode)
  (export '%ode::struct-size :%ode)
  (export '%ode::set-value :%ode)
  (export '%ode::%freeres-buf :%ode)
  (export '%ode::joint-create-pr :%ode)
  (export '%ode::reserve-factor :%ode)
  (export '%ode::heightfield-data-id :%ode)
  (export '%ode::time :%ode)
  (export '%ode::space-get-class :%ode)
  (export '%ode::multiply-helper1-331 :%ode)
  (export '%ode::copy-matrix4x3 :%ode)
  (export '%ode::get-error-handler :%ode)
  (export '%ode::world-step-memory-functions-info :%ode)
  (export '%ode::+worldstep-reservefactor-default+ :%ode)
  (export '%ode::joint-get-l-motor-axis :%ode)
  (export '%ode::joint-set-plane2dx-param :%ode)
  (export '%ode::joint-get-pr-axis1 :%ode)
  (export '%ode::+single+ :%ode)
  (export '%ode::body-vector-to-world :%ode)
  (export '%ode::body-copy-position :%ode)
  (export '%ode::body-get-world :%ode)
  (export '%ode::calc-vector-dot3-14 :%ode)
  (export '%ode::free-function :%ode)
  (export '%ode::rand-get-seed :%ode)
  (export '%ode::bytes :%ode)
  (export '%ode::joint-get-universal-param :%ode)
  (export '%ode::joint-add-hinge2torques :%ode)
  (export '%ode::clear-upper-triangle :%ode)
  (export '%ode::joint-set-piston-axis-delta :%ode)
  (export '%ode::geom-tri-mesh-data-build-double :%ode)
  (export '%ode::thread-ready-to-serve-callback :%ode)
  (export '%ode::joint-get-hinge-angle :%ode)
  (export '%ode::geom-sphere-get-radius :%ode)
  (export '%ode::real :%ode)
  (export '%ode::geom-is-enabled :%ode)
  (export '%ode::add-vectors3 :%ode)
  (export '%ode::+param-cfm+ :%ode)
  (export '%ode::solve-l1 :%ode)
  (export '%ode::quat-element :%ode)
  (export '%ode::get-aabb-fn :%ode)
  (export '%ode::world-set-quick-step-num-iterations :%ode)
  (export '%ode::zero-vector3 :%ode)
  (export '%ode::get-collider-fn-fn :%ode)
  (export '%ode::world-set-angular-damping :%ode)
  (export '%ode::geom-get-class :%ode)
  (export '%ode::joint-get-piston-anchor :%ode)
  (export '%ode::body-set-auto-disable-average-samples-count :%ode)
  (export '%ode::q-multiply1 :%ode)
  (export '%ode::x-geom :%ode)
  (export '%ode::joint-set-transmission-mode :%ode)
  (export '%ode::joint-set-pr-axis1 :%ode)
  (export '%ode::+convex-class+ :%ode)
  (export '%ode::set-realloc-handler :%ode)
  (export '%ode::+param-suspension-cfm3+ :%ode)
  (export '%ode::add-vector-scaled-vector3 :%ode)
  (export '%ode::ldlt-add-tl :%ode)
  (export '%ode::%freeres-list :%ode)
  (export '%ode::set-free-handler :%ode)
  (export '%ode::threaded-call-function :%ode)
  (export '%ode::|C:@EA@D-VEC4ELEMENT| :%ode)
  (export '%ode::print-matrix :%ode)
  (export '%ode::mat3element :%ode)
  (export '%ode::joint-get-universal-axis1 :%ode)
  (export '%ode::joint-set-transmission-axis1 :%ode)
  (export '%ode::geom-copy-offset-position :%ode)
  (export '%ode::space-set-sublevel :%ode)
  (export '%ode::rand-int :%ode)
  (export '%ode::scale-vector :%ode)
  (export '%ode::body-copy-rotation :%ode)
  (export '%ode::joint-get-body :%ode)
  (export '%ode::world-create :%ode)
  (export '%ode::|C:@EA@D-SPACE-AXIS| :%ode)
  (export '%ode::joint-set-hinge2axis1 :%ode)
  (export '%ode::wait-call :%ode)
  (export '%ode::body-get-linear-damping-threshold :%ode)
  (export '%ode::geom-ray-get-length :%ode)
  (export '%ode::+param-bounce+ :%ode)
  (export '%ode::soft-erp :%ode)
  (export '%ode::resource-requirements-merge-in :%ode)
  (export '%ode::+param-lo-stop2+ :%ode)
  (export '%ode::x-threading-functions-info :%ode)
  (export '%ode::box-box :%ode)
  (export '%ode::+param-hi-vel2+ :%ode)
  (export '%ode::joint-set-transmission-param :%ode)
  (export '%ode::hash-space-create :%ode)
  (export '%ode::body-set-rotation :%ode)
  (export '%ode::multiply1 :%ode)
  (export '%ode::geom-set-rotation :%ode)
  (export '%ode::body-get-auto-disable-time :%ode)
  (export '%ode::joint-set-transmission-axis2 :%ode)
  (export '%ode::threaded-call-wait-reset-function :%ode)
  (export '%ode::joint-id :%ode)
  (export '%ode::joint-set-transmission-radius1 :%ode)
  (export '%ode::world-get-data :%ode)
  (export '%ode::+param-erp1+ :%ode)
  (export '%ode::+contact-approx1-1+ :%ode)
  (export '%ode::+param-stop-cfm1+ :%ode)
  (export '%ode::geom-get-body-next :%ode)
  (export '%ode::+geom-collider-merge-contacts-value-normals+ :%ode)
  (export '%ode::calc-vector-cross3-114 :%ode)
  (export '%ode::joint-set-pr-anchor :%ode)
  (export '%ode::+param-suspension-erp+ :%ode)
  (export '%ode::hash-space-get-levels :%ode)
  (export '%ode::calc-vector-dot3 :%ode)
  (export '%ode::body-add-rel-force :%ode)
  (export '%ode::joint-set-pu-axis1 :%ode)
  (export '%ode::copy-vector3 :%ode)
  (export '%ode::multiply-add0-333 :%ode)
  (export '%ode::estimate-cooperatively-solve-ldlt-resource-requirements
          :%ode)
  (export '%ode::mutex-group-mutex-unlock-function :%ode)
  (export '%ode::rand-real :%ode)
  (export '%ode::collider-fn :%ode)
  (export '%ode::+geom-c-cylinder-point-depth+ :%ode)
  (export '%ode::heightfield-get-height :%ode)
  (export '%ode::%io-marker :%ode)
  (export '%ode::space-add :%ode)
  (export '%ode::joint-set-piston-anchor-offset :%ode)
  (export '%ode::geom-plane-point-depth :%ode)
  (export '%ode::reserve-minimum :%ode)
  (export '%ode::orthogonalize-r :%ode)
  (export '%ode::geom-set-offset-world-position :%ode)
  (export '%ode::space-remove :%ode)
  (export '%ode::mass-set-capped-cylinder-total :%ode)
  (export '%ode::+first-space-class+ :%ode)
  (export '%ode::motion2 :%ode)
  (export '%ode::geom-set-quaternion :%ode)
  (export '%ode::body-set-dynamic :%ode)
  (export '%ode::call-wait-id :%ode)
  (export '%ode::joint-set-hinge2axes :%ode)
  (export '%ode::ldlt-remove :%ode)
  (export '%ode::joint-destroy :%ode)
  (export '%ode::add-scaled-vectors3 :%ode)
  (export '%ode::subtract-vectors3 :%ode)
  (export '%ode::body-add-force :%ode)
  (export '%ode::+param-f-max1+ :%ode)
  (export '%ode::get-message-handler :%ode)
  (export '%ode::geom-set-category-bits :%ode)
  (export '%ode::joint-get-pu-angle1rate :%ode)
  (export '%ode::joint-set-plane2dy-param :%ode)
  (export '%ode::joint-get-hinge2angle1 :%ode)
  (export '%ode::geom-copy-position :%ode)
  (export '%ode::+sap-axes-zxy+ :%ode)
  (export '%ode::body-get-next-geom :%ode)
  (export '%ode::joint-set-a-motor-angle :%ode)
  (export '%ode::+geom-c-cylinder-get-params+ :%ode)
  (export '%ode::calc-vector-length3 :%ode)
  (export '%ode::world-get-linear-damping :%ode)
  (export '%ode::geom-tri-mesh-get-tri-mesh-data-id :%ode)
  (export '%ode::|C:@EA@D-MAT3ELEMENT| :%ode)
  (export '%ode::multiply-add0-133 :%ode)
  (export '%ode::joint-get-ball-anchor2 :%ode)
  (export '%ode::x-mutex-group :%ode)
  (export '%ode::stopwatch-reset :%ode)
  (export '%ode::joint-set-universal-axis2 :%ode)
  (export '%ode::joint-get-fixed-param :%ode)
  (export '%ode::close-ode :%ode)
  (export '%ode::+geom-common-any-control-code+ :%ode)
  (export '%ode::geom-set-convex :%ode)
  (export '%ode::calc-vector-dot3-33 :%ode)
  (export '%ode::joint-get-piston-position-rate :%ode)
  (export '%ode::+param-stop-erp+ :%ode)
  (export '%ode::geom-tri-mesh-get-triangle :%ode)
  (export '%ode::mass-rotate :%ode)
  (export '%ode::timer-resolution :%ode)
  (export '%ode::solve-l1t :%ode)
  (export '%ode::calc-vector-dot3-13 :%ode)
  (export '%ode::geom-tri-mesh-get-array-callback :%ode)
  (export '%ode::t2 :%ode)
  (export '%ode::assign-vector3 :%ode)
  (export '%ode::geom-get-body :%ode)
  (export '%ode::+param-stop-cfm3+ :%ode)
  (export '%ode::calc-matrix3det :%ode)
  (export '%ode::threading-allocate-self-threaded-implementation
          :%ode)
  (export '%ode::joint-get-piston-angle-rate :%ode)
  (export '%ode::joint-get-hinge2axis2 :%ode)
  (export '%ode::joint-create-hinge :%ode)
  (export '%ode::+worldstep-threadcount-unlimited+ :%ode)
  (export '%ode::%shortbuf :%ode)
  (export '%ode::joint-enable :%ode)
  (export '%ode::calc-point-depth3 :%ode)
  (export '%ode::free-block :%ode)
  (export '%ode::threading-implementation-shutdown-processing :%ode)
  (export '%ode::+fp-zero+ :%ode)
  (export '%ode::geom-capsule-set-params :%ode)
  (export '%ode::subtract-vector-cross3 :%ode)
  (export '%ode::resource-requirements-id :%ode)
  (export '%ode::tri-callback :%ode)
  (export '%ode::create-geom-class :%ode)
  (export '%ode::joint-set-l-motor-axis :%ode)
  (export '%ode::+param-f-max3+ :%ode)
  (export '%ode::joint-get-slider-param :%ode)
  (export '%ode::multiply0-133 :%ode)
  (export '%ode::world-get-contact-max-correcting-vel :%ode)
  (export '%ode::joint-get-hinge-angle-rate :%ode)
  (export '%ode::joint-get-pr-param :%ode)
  (export '%ode::world-set-auto-disable-flag :%ode)
  (export '%ode::geom-tri-mesh-get-data :%ode)
  (export '%ode::body-get-quaternion :%ode)
  (export '%ode::file :%ode)
  (export '%ode::+tridatapreprocess-build--max+ :%ode)
  (export '%ode::geom-tri-mesh-data-set :%ode)
  (export '%ode::geom-enable :%ode)
  (export '%ode::geom-box-point-depth :%ode)
  (export '%ode::geom-plane-get-params :%ode)
  (export '%ode::x-call-wait :%ode)
  (export '%ode::space-collide :%ode)
  (export '%ode::body-disable :%ode)
  (export '%ode::multiply-helper0-331 :%ode)
  (export '%ode::geom-tri-mesh-data-set-buffer :%ode)
  (export '%ode::alter-call-dependencies-count :%ode)
  (export '%ode::+param-hi-vel1+ :%ode)
  (export '%ode::mass-set-sphere :%ode)
  (export '%ode::max-difference :%ode)
  (export '%ode::joint-set-a-motor-num-axes :%ode)
  (export '%ode::|C:@EA@D-MOTION-DYNAMICS| :%ode)
  (export '%ode::+tri-mesh-class+ :%ode)
  (export '%ode::joint-get-universal-angles :%ode)
  (export '%ode::threading-allocate-multi-threaded-implementation
          :%ode)
  (export '%ode::joint-get-a-motor-angle-rate :%ode)
  (export '%ode::space-set-cleanup :%ode)
  (export '%ode::+param-cfm2+ :%ode)
  (export '%ode::joint-type :%ode)
  (export '%ode::geom-get-position :%ode)
  (export '%ode::create-geom :%ode)
  (export '%ode::geom-transform-get-geom :%ode)
  (export '%ode::qfrom-r :%ode)
  (export '%ode::mass-set-capsule-total :%ode)
  (export '%ode::geom-transform-set-cleanup :%ode)
  (export '%ode::joint-set-hinge-anchor-delta :%ode)
  (export '%ode::tri-index :%ode)
  (export '%ode::multiply-add1-331 :%ode)
  (export '%ode::body-get-num-joints :%ode)
  (export '%ode::estimate-cooperatively-solve-l1straight-resource-requirements
          :%ode)
  (export '%ode::world-set-damping :%ode)
  (export '%ode::+geom-collider-control-class+ :%ode)
  (export '%ode::+contact-soft-cfm+ :%ode)
  (export '%ode::geom-tri-mesh-get-callback :%ode)
  (export '%ode::|C:@EA@D-MESH-TRIANGLE-VERTEX| :%ode)
  (export '%ode::+param-group3+ :%ode)
  (export '%ode::+geom-common-control-class+ :%ode)
  (export '%ode::body-get-first-geom :%ode)
  (export '%ode::joint-set-slider-param :%ode)
  (export '%ode::joint-get-universal-angle1 :%ode)
  (export '%ode::+a-motor-euler+ :%ode)
  (export '%ode::|C:@SA@D-WORLD-STEP-RESERVE-INFO| :%ode)
  (export '%ode::geom-ray-set-backface-cull :%ode)
  (export '%ode::+param-group1+ :%ode)
  (export '%ode::+sap-axes-zyx+ :%ode)
  (export '%ode::estimate-cooperatively-scale-vector-resource-requirements
          :%ode)
  (export '%ode::joint-get-pu-angle2rate :%ode)
  (export '%ode::r-from2axes :%ode)
  (export '%ode::mutex-group-mutex-lock-function :%ode)
  (export '%ode::is-positive-definite :%ode)
  (export '%ode::geom-get-pos-rel-point :%ode)
  (export '%ode::joint-create-fixed :%ode)
  (export '%ode::aabb-test :%ode)
  (export '%ode::invert-matrix3 :%ode)
  (export '%ode::collide :%ode)
  (export '%ode::body-set-auto-disable-linear-threshold :%ode)
  (export '%ode::geom-set-position :%ode)
  (export '%ode::x-space :%ode)
  (export '%ode::body-get-point-vel :%ode)
  (export '%ode::c :%ode)
  (export '%ode::+tridatapreprocess-face-angles-extra--default+
          :%ode)
  (export '%ode::space-get-cleanup :%ode)
  (export '%ode::body-get-angular-damping :%ode)
  (export '%ode::joint-get-pr-position-rate :%ode)
  (export '%ode::vec3element :%ode)
  (export '%ode::joint-set-universal-axis1offset :%ode)
  (export '%ode::joint-create-slider :%ode)
  (export '%ode::geom-tri-mesh-enable-tc :%ode)
  (export '%ode::multiply0-333 :%ode)
  (export '%ode::joint-set-d-hinge-axis :%ode)
  (export '%ode::body-get-joint :%ode)
  (export '%ode::%lock :%ode)
  (export '%ode::joint-get-type :%ode)
  (export '%ode::+param-suspension-erp2+ :%ode)
  (export '%ode::joint-set-transmission-anchor2 :%ode)
  (export '%ode::joint-get-slider-position :%ode)
  (export '%ode::slip2 :%ode)
  (export '%ode::world-export-dif :%ode)
  (export '%ode::+geom-collider-merge-contacts-value-full+ :%ode)
  (export '%ode::are-connected :%ode)
  (export '%ode::geom-transform-get-info :%ode)
  (export '%ode::geom-ray-set-length :%ode)
  (export '%ode::geom-heightfield-data-build-callback :%ode)
  (export '%ode::max :%ode)
  (export '%ode::mass-set-capsule :%ode)
  (export '%ode::solve-ldlt :%ode)
  (export '%ode::geom-tri-mesh-set-last-transform :%ode)
  (export '%ode::world-set-data :%ode)
  (export '%ode::cc :%ode)
  (export '%ode::joint-get-d-hinge-anchor1 :%ode)
  (export '%ode::+sap-axes-xyz+ :%ode)
  (export '%ode::+first-user-class+ :%ode)
  (export '%ode::body-enable :%ode)
  (export '%ode::x-tri-mesh-data :%ode)
  (export '%ode::cooperatively-solve-ldlt :%ode)
  (export '%ode::vector4 :%ode)
  (export '%ode::joint-get-l-motor-num-axes :%ode)
  (export '%ode::joint-set-universal-anchor :%ode)
  (export '%ode::joint-set-hinge2anchor :%ode)
  (export '%ode::body-set-damping :%ode)
  (export '%ode::%io-read-end :%ode)
  (export '%ode::%%pad5 :%ode)
  (export '%ode::are-connected-excluding :%ode)
  (export '%ode::+fp-infinite+ :%ode)
  (export '%ode::rho :%ode)
  (export '%ode::body-get-torque :%ode)
  (export '%ode::geom-tri-mesh-data-preprocess2 :%ode)
  (export '%ode::body-get-auto-disable-steps :%ode)
  (export '%ode::body-set-moved-callback :%ode)
  (export '%ode::world-set-linear-damping-threshold :%ode)
  (export '%ode::geom-dtor-fn :%ode)
  (export '%ode::rho2 :%ode)
  (export '%ode::joint-create-contact :%ode)
  (export '%ode::get-alloc-handler :%ode)
  (export '%ode::body-set-auto-disable-steps :%ode)
  (export '%ode::timer-end :%ode)
  (export '%ode::geom-cylinder-get-params :%ode)
  (export '%ode::near-callback :%ode)
  (export '%ode::+param-lo-stop+ :%ode)
  (export '%ode::timer-ticks-per-second :%ode)
  (export '%ode::resource-requirements-destroy :%ode)
  (export '%ode::threading-impl-thread-count-retrieve-function :%ode)
  (export '%ode::joint-get-d-ball-param :%ode)
  (export '%ode::joint-get-hinge2angle2rate :%ode)
  (export '%ode::joint-set-data :%ode)
  (export '%ode::world-set-max-angular-speed :%ode)
  (export '%ode::rfrom-q :%ode)
  (export '%ode::mass-adjust :%ode)
  (export '%ode::copy-scaled-vector3 :%ode)
  (export '%ode::joint-get-pu-position-rate :%ode)
  (export '%ode::cooperative-id :%ode)
  (export '%ode::wait-nsec :%ode)
  (export '%ode::joint-get-feedback :%ode)
  (export '%ode::negate-vector3 :%ode)
  (export '%ode::calc-points-distance3 :%ode)
  (export '%ode::joint-get-transmission-anchor2 :%ode)
  (export '%ode::body-get-rel-point-pos :%ode)
  (export '%ode::+param-lo-stop3+ :%ode)
  (export '%ode::motion-n :%ode)
  (export '%ode::dtor :%ode)
  (export '%ode::body-set-kinematic :%ode)
  (export '%ode::geom-tri-mesh-data-build-single1 :%ode)
  (export '%ode::multiply-helper1-133 :%ode)
  (export '%ode::geom-tri-mesh-data-get :%ode)
  (export '%ode::geom-get-space :%ode)
  (export '%ode::surface-parameters :%ode)
  (export '%ode::%io-write-base :%ode)
  (export '%ode::geom-id :%ode)
  (export '%ode::geom-tri-mesh-set-data :%ode)
  (export '%ode::joint-get-l-motor-param :%ode)
  (export '%ode::joint-get-piston-axis :%ode)
  (export '%ode::joint-get-d-ball-distance :%ode)
  (export '%ode::joint-create-d-hinge :%ode)
  (export '%ode::+geom-transform-class+ :%ode)
  (export '%ode::joint-create-plane2d :%ode)
  (export '%ode::create-heightfield :%ode)
  (export '%ode::mode :%ode)
  (export '%ode::+sap-axes-xzy+ :%ode)
  (export '%ode::geom-tri-mesh-data-preprocess :%ode)
  (export '%ode::+capsule-class+ :%ode)
  (export '%ode::init-ode-flags :%ode)
  (export '%ode::joint-get-pu-axis-p :%ode)
  (export '%ode::geom-tri-mesh-data-create :%ode)
  (export '%ode::geom-heightfield-data-create :%ode)
  (export '%ode::body-set-angular-damping :%ode)
  (export '%ode::mass-set-box-total :%ode)
  (export '%ode::surface :%ode)
  (export '%ode::joint-set-transmission-radius2 :%ode)
  (export '%ode::threaded-call-wait-function :%ode)
  (export '%ode::world-set-auto-disable-steps :%ode)
  (export '%ode::vector-scale :%ode)
  (export '%ode::timer-report :%ode)
  (export '%ode::preallocate-resources-for-calls :%ode)
  (export '%ode::threading-implementation-get-functions :%ode)
  (export '%ode::joint-feedback :%ode)
  (export '%ode::matrix3 :%ode)
  (export '%ode::%wide-data :%ode)
  (export '%ode::safe-normalize4 :%ode)
  (export '%ode::|C:@EA@D-VEC3ELEMENT| :%ode)
  (export '%ode::joint-get-d-hinge-distance :%ode)
  (export '%ode::geom-get-collide-bits :%ode)
  (export '%ode::init-ode2 :%ode)
  (export '%ode::+param-fudge-factor1+ :%ode)
  (export '%ode::world-get-max-angular-speed :%ode)
  (export '%ode::joint-set-d-ball-anchor2 :%ode)
  (export '%ode::+tridatapreprocess-face-angles-extra-byte-positive+
          :%ode)
  (export '%ode::joint-set-fixed-param :%ode)
  (export '%ode::f2 :%ode)
  (export '%ode::rand-set-seed :%ode)
  (export '%ode::+param-group+ :%ode)
  (export '%ode::x-threading-implementation :%ode)
  (export '%ode::+param-hi-vel3+ :%ode)
  (export '%ode::free :%ode)
  (export '%ode::shrink-block :%ode)
  (export '%ode::joint-get-pu-angles :%ode)
  (export '%ode::alloc-function :%ode)
  (export '%ode::soft-cfm :%ode)
  (export '%ode::plane-space :%ode)
  (export '%ode::remove-row-col :%ode)
  (export '%ode::joint-get-pr-angle :%ode)
  (export '%ode::|C:@SA@D-WORLD-STEP-MEMORY-FUNCTIONS-INFO| :%ode)
  (export '%ode::+meshdatause-edge3+ :%ode)
  (export '%ode::side1 :%ode)
  (export '%ode::mass-translate :%ode)
  (export '%ode::joint-set-hinge2param :%ode)
  (export '%ode::vector3 :%ode)
  (export '%ode::world-set-gravity :%ode)
  (export '%ode::timer-start :%ode)
  (export '%ode::joint-set-transmission-anchor1 :%ode)
  (export '%ode::joint-set-slider-axis :%ode)
  (export '%ode::body-set-linear-damping :%ode)
  (export '%ode::quaternion :%ode)
  (export '%ode::threaded-call-post-function :%ode)
  (export '%ode::dot :%ode)
  (export '%ode::factor-cholesky :%ode)
  (export '%ode::geom-tri-mesh-set-tri-merge-callback :%ode)
  (export '%ode::create-plane :%ode)
  (export '%ode::joint-get-hinge-param :%ode)
  (export '%ode::+param-lo-vel2+ :%ode)
  (export '%ode::multiply-add1-333 :%ode)
  (export '%ode::geom-is-offset :%ode)
  (export '%ode::geom-box-set-lengths :%ode)
  (export '%ode::realloc :%ode)
  (export '%ode::+quad-tree-space-class+ :%ode)
  (export '%ode::body-set-auto-disable-time :%ode)
  (export '%ode::copy-negated-vector3 :%ode)
  (export '%ode::+param-erp3+ :%ode)
  (export '%ode::joint-get-universal-angle2 :%ode)
  (export '%ode::geom-tri-mesh-data-update :%ode)
  (export '%ode::+geom-collider-merge-contacts-value--default+ :%ode)
  (export '%ode::threaded-wait-time :%ode)
  (export '%ode::joint-get-transmission-anchor1 :%ode)
  (export '%ode::geom-tri-mesh-data-build-simple :%ode)
  (export '%ode::joint-add-universal-torques :%ode)
  (export '%ode::get-matrix-column3 :%ode)
  (export '%ode::joint-set-pu-anchor :%ode)
  (export '%ode::joint-get-a-motor-mode :%ode)
  (export '%ode::+param-bounce3+ :%ode)
  (export '%ode::external-threading-serve-multi-threaded-implementation
          :%ode)
  (export '%ode::joint-get-pu-angle2 :%ode)
  (export '%ode::timer-now :%ode)
  (export '%ode::+param-cfm1+ :%ode)
  (export '%ode::joint-get-transmission-mode :%ode)
  (export '%ode::lock-group-mutex :%ode)
  (export '%ode::+c-cylinder-class+ :%ode)
  (export '%ode::+param-hi-stop1+ :%ode)
  (export '%ode::joint-get-pu-param :%ode)
  (export '%ode::world-set-quick-step-w :%ode)
  (export '%ode::space-id :%ode)
  (export '%ode::joint-set-universal-axis1 :%ode)
  (export '%ode::joint-get-transmission-contact-point1 :%ode)
  (export '%ode::cooperatively-solve-l1straight :%ode)
  (export '%ode::+meshdatause-edge2+ :%ode)
  (export '%ode::geom-tri-mesh-set-ray-callback :%ode)
  (export '%ode::+tridatapreprocess-build--min+ :%ode)
  (export '%ode::mass-set-cylinder-total :%ode)
  (export '%ode::solve-cholesky :%ode)
  (export '%ode::geom-vector-from-world :%ode)
  (export '%ode::joint-get-pr-axis2 :%ode)
  (export '%ode::geom-clear-offset :%ode)
  (export '%ode::joint-group-destroy :%ode)
  (export '%ode::threading-free-implementation :%ode)
  (export '%ode::joint-set-d-hinge-anchor2 :%ode)
  (export '%ode::geom-set-offset-quaternion :%ode)
  (export '%ode::aabb :%ode))

