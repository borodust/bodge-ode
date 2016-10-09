(cl:in-package :clode)


(alexandria:define-constant +ode-version+ "0.14" :test #'cl:equal)
(alexandria:define-constant +contacts-unimportant+ 2147483648)
(alexandria:define-constant +sap-axes-zyx+ (cl:logior 2 (cl:ash 1 2) (cl:ash 0 4)))
(alexandria:define-constant +sap-axes-zxy+ (cl:logior 2 (cl:ash 0 2) (cl:ash 1 4)))
(alexandria:define-constant +sap-axes-yzx+ (cl:logior 1 (cl:ash 2 2) (cl:ash 0 4)))
(alexandria:define-constant +sap-axes-yxz+ (cl:logior 1 (cl:ash 0 2) (cl:ash 2 4)))
(alexandria:define-constant +sap-axes-xzy+ (cl:logior 0 (cl:ash 2 2) (cl:ash 1 4)))
(alexandria:define-constant +sap-axes-xyz+ (cl:logior 0 (cl:ash 1 2) (cl:ash 2 4)))
(alexandria:define-constant +worldstep-reservesize-default+ 65536)
(alexandria:define-constant +worldstep-reservefactor-default+ 1.2d0)
(alexandria:define-constant +worldstep-threadcount-unlimited+ 0)


(defanonenum
  +trimesh-face-normals+)

(defanonenum
  (+max-user-classes+ 4))

(defanonenum
  (+sphere-class+ 0)
  +box-class+
  +capsule-classb+
  +cylinder-class+
  +plane-class+
  +ray-class+
  +convex-class+
  +geom-transform-class+
  +tri-mesh-class+
  +heightfield-class+
  +first-space-class+
  (+simple-space-class+ +first-space-class+)
  +hash-space-class+
  +sweep-and-prune-space-class+
  +quad-tree-space-class+
  (+last-space-class+ +quad-tree-space-class+)
  +first-user-class+
  (+last-user-class+ (cl:+ +first-user-class+ (cl:- +max-user-classes+ 1)))
  +geom-num-classes+)

(defanonenum
  (+geom-collider-merge-contacts-value-default+ 0)
  (+geom-collider-merge-contacts-value-none+ 1)
  (+geom-collider-merge-contacts-value-normals+ 2)
  (+geom-collider-merge-contacts-value-full+ 3))

(defanonenum
  (+geom-common-any-control-code+ 0)
  (+geom-collider-set-merge-sphere-contacts-control-code+ 1)
  (+geom-collider-get-merge-sphere-contacts-control-code+ 2))

(defanonenum
  (+geom-common-control-class+ 0)
  (+geom-collider-control-class+ 1))

(defanonenum
  (+contact-mu2+ 1)
  (+contact-axis-dep+ 1)
  (+contact-fdir1+ 2)
  (+contact-bounce+ 4)
  (+contact-soft-erp+ 8)
  (+contact-soft-cfm+ 16)
  (+contact-motion1+ 32)
  (+contact-motion2+ 64)
  (+contact-motionn+ 128)
  (+contact-slip1+ 256)
  (+contact-slip2+ 512)
  (+contact-rolling+ 1024)
  (+contact-approx0+ 0)
  (+contact-approx1-1+ 4096)
  (+contact-approx1-2+ 8192)
  (+contact-approx1-n+ 16384)
  (+contact-approx1+ 28672))

(defanonenum
  (+transmission-parallel-axes+ 0)
  (+transmission-intersecting-axes+ 1)
  (+transmission-chain-drive+ 2))

(defanonenum
  (+amotor-user+ 0)
  (+amotor-euler+ 1))

(defanonenum
  (+param-lo-stop+ 0)
  +param-hi-stop+
  +param-vel+
  +param-lo-vel+
  +param-hi-vel+
  +param-fmax+
  +param-fudge-factor+
  +param-bounce+
  +param-cfm+
  +param-stop-erp+
  +param-stop-cfm+
  +param-suspension-erp+
  +param-suspension-cfm+
  +param-erp+
  +params-in-group+
  (+param-group1+ 0)
  (+param-lo-stop1+ 0)
  +param-hi-stop1+
  +param-vel1+
  +param-lo-vel1+
  +param-hi-vel1+
  +param-fmax1+
  +param-fudge-factor1+
  +param-bounce1+
  +param-cfm1+
  +param-stop-erp1+
  +param-stop-cfm1+
  +param-suspension-erp1+
  +param-suspension-cfm1+
  +param-erp1+
  (+param-group2+ 256)
  (+param-lo-stop2+ 256)
  +param-hi-stop2+
  +param-vel2+
  +param-lo-vel2+
  +param-hi-vel2+
  +param-fmax2+
  +param-fudge-factor2+
  +param-bounce2+
  +param-cfm2+
  +param-stop-erp2+
  +param-stop-cfm2+
  +param-suspension-erp2+
  +param-suspension-cfm2+
  +param-erp2+
  (+param-group3+ 512)
  (+param-lo-stop3+ 512)
  +param-hi-stop3+
  +param-vel3+
  +param-lo-vel3+
  +param-hi-vel3+
  +param-fmax3+
  +param-fudge-factor3+
  +param-bounce3+
  +param-cfm3+
  +param-stop-erp3+
  +param-stop-cfm3+
  +param-suspension-erp3+
  +param-suspension-cfm3+
  +param-erp3+
  (+param-group+ 256))
