(cl:in-package :clode)


(cffi:defcfun ("dGeomTriMeshDataUpdate" geom-tri-mesh-data-update)
    :void
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshGetTriangleCount" geom-tri-mesh-get-triangle-count)
    :int
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshGetPoint" geom-tri-mesh-get-point)
    :void
  (g :pointer)
  (index :int)
  (u :float)
  (v :float)
  (out :pointer))
(cffi:defcfun ("dGeomTriMeshGetTriangle" geom-tri-mesh-get-triangle)
    :void
  (g :pointer)
  (index :int)
  (v0 :pointer)
  (v1 :pointer)
  (v2 :pointer))
(cffi:defcfun ("dGeomTriMeshGetTriMeshDataID"
               geom-tri-mesh-get-tri-mesh-data-id)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshClearTCCache" geom-tri-mesh-clear-tccache)
    :void
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshIsTCEnabled" geom-tri-mesh-is-tcenabled)
    :int
  (g :pointer)
  (geomclass :int))
(cffi:defcfun ("dGeomTriMeshEnableTC" geom-tri-mesh-enable-tc)
    :void
  (g :pointer)
  (geomclass :int)
  (enable :int))
(cffi:defcfun ("dGeomTriMeshGetData" geom-tri-mesh-get-data)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshSetData" geom-tri-mesh-set-data)
    :void
  (g :pointer)
  (data :pointer))
(cffi:defcfun ("dCreateTriMesh" create-tri-mesh)
    :pointer
  (space :pointer)
  (data :pointer)
  (callback :pointer)
  (arraycallback :pointer)
  (raycallback :pointer))
(cffi:defcfun ("dGeomTriMeshGetTriMergeCallback"
               geom-tri-mesh-get-tri-merge-callback)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshSetTriMergeCallback"
               geom-tri-mesh-set-tri-merge-callback)
    :void
  (g :pointer)
  (callback :pointer))
(cffi:defcfun ("dGeomTriMeshGetRayCallback" geom-tri-mesh-get-ray-callback)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshSetRayCallback" geom-tri-mesh-set-ray-callback)
    :void
  (g :pointer)
  (callback :pointer))
(cffi:defcfun ("dGeomTriMeshGetArrayCallback" geom-tri-mesh-get-array-callback)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshSetArrayCallback" geom-tri-mesh-set-array-callback)
    :void
  (g :pointer)
  (arraycallback :pointer))
(cffi:defcfun ("dGeomTriMeshGetCallback" geom-tri-mesh-get-callback)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshSetCallback" geom-tri-mesh-set-callback)
    :void
  (g :pointer)
  (callback :pointer))
(cffi:defcfun ("dGeomTriMeshDataSetBuffer" geom-tri-mesh-data-set-buffer)
    :void
  (g :pointer)
  (buf :pointer))
(cffi:defcfun ("dGeomTriMeshDataGetBuffer" geom-tri-mesh-data-get-buffer)
    :void
  (g :pointer)
  (buf :pointer)
  (buflen :pointer))
(cffi:defcfun ("dGeomTriMeshDataPreprocess" geom-tri-mesh-data-preprocess)
    :void
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshDataBuildSimple1" geom-tri-mesh-data-build-simple1)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (normals :pointer))
(cffi:defcfun ("dGeomTriMeshDataBuildSimple" geom-tri-mesh-data-build-simple)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int))
(cffi:defcfun ("dGeomTriMeshDataBuildDouble1" geom-tri-mesh-data-build-double1)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexstride :int)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (tristride :int)
  (normals :pointer))
(cffi:defcfun ("dGeomTriMeshDataBuildDouble" geom-tri-mesh-data-build-double)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexstride :int)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (tristride :int))
(cffi:defcfun ("dGeomTriMeshDataBuildSingle1" geom-tri-mesh-data-build-single1)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexstride :int)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (tristride :int)
  (normals :pointer))
(cffi:defcfun ("dGeomTriMeshDataBuildSingle" geom-tri-mesh-data-build-single)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexstride :int)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (tristride :int))
(cffi:defcfun ("dGeomTriMeshGetLastTransform" geom-tri-mesh-get-last-transform)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshSetLastTransform" geom-tri-mesh-set-last-transform)
    :void
  (g :pointer)
  (last_trans :pointer))
(cffi:defcfun ("dGeomTriMeshDataGet" geom-tri-mesh-data-get)
    :pointer
  (g :pointer)
  (data_id :int))
(cffi:defcfun ("dGeomTriMeshDataSet" geom-tri-mesh-data-set)
    :void
  (g :pointer)
  (data_id :int)
  (in_data :pointer))
(cffi:defcfun ("dGeomTriMeshDataDestroy" geom-tri-mesh-data-destroy)
    :void
  (g :pointer))
(cffi:defcfun ("dGeomTriMeshDataCreate" geom-tri-mesh-data-create)
    :pointer)
(cffi:defcfun ("dSetColliderOverride" set-collider-override)
    :void
  (i :int)
  (j :int)
  (fn :pointer))
(cffi:defcfun ("dCreateGeom" create-geom)
    :pointer
  (classnum :int))
(cffi:defcfun ("dGeomGetClassData" geom-get-class-data)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dCreateGeomClass" create-geom-class)
    :int
  (classptr :pointer))
(cffi:defcfun ("dInfiniteAABB" infinite-aabb)
    :void
  (geom :pointer)
  (aabb :pointer))
(cffi:defcfun ("dBoxBox" box-box)
    :int
  (p1 :pointer)
  (r1 :pointer)
  (side1 :pointer)
  (p2 :pointer)
  (r2 :pointer)
  (side2 :pointer)
  (normal :pointer)
  (depth :pointer)
  (return-code :pointer)
  (flags :int)
  (contact :pointer)
  (skip :int))
(cffi:defcfun ("dBoxTouchesBox" box-touches-box)
    :int
  (P1 :pointer)
  (r1 :pointer)
  (side1 :pointer)
  (P2 :pointer)
  (r2 :pointer)
  (side2 :pointer))
(cffi:defcfun ("dClosestLineSegmentPoints" closest-line-segment-points)
    :void
  (a1 :pointer)
  (a2 :pointer)
  (b1 :pointer)
  (b2 :pointer)
  (cp1 :pointer)
  (cp2 :pointer))
(cffi:defcfun ("dGeomHeightfieldGetHeightfieldData"
               geom-heightfield-get-heightfield-data)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomHeightfieldSetHeightfieldData"
               geom-heightfield-set-heightfield-data)
    :void
  (g :pointer)
  (d :pointer))
(cffi:defcfun ("dGeomHeightfieldDataSetBounds"
               geom-heightfield-data-set-bounds)
    :void
  (d :pointer)
  (minheight :float)
  (maxheight :float))
(cffi:defcfun ("dGeomHeightfieldDataBuildDouble"
               geom-heightfield-data-build-double)
    :void
  (d :pointer)
  (pheightdata :pointer)
  (bcopyheightdata :int)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))
(cffi:defcfun ("dGeomHeightfieldDataBuildSingle"
               geom-heightfield-data-build-single)
    :void
  (d :pointer)
  (pheightdata :pointer)
  (bcopyheightdata :int)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))
(cffi:defcfun ("dGeomHeightfieldDataBuildShort"
               geom-heightfield-data-build-short)
    :void
  (d :pointer)
  (pheightdata :pointer)
  (bcopyheightdata :int)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))
(cffi:defcfun ("dGeomHeightfieldDataBuildByte"
               geom-heightfield-data-build-byte)
    :void
  (d :pointer)
  (pheightdata :pointer)
  (bcopyheightdata :int)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))
(cffi:defcfun ("dGeomHeightfieldDataBuildCallback"
               geom-heightfield-data-build-callback)
    :void
  (d :pointer)
  (puserdata :pointer)
  (pcallback :pointer)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))
(cffi:defcfun ("dGeomHeightfieldDataDestroy" geom-heightfield-data-destroy)
    :void
  (d :pointer))
(cffi:defcfun ("dGeomHeightfieldDataCreate" geom-heightfield-data-create)
    :pointer)
(cffi:defcfun ("dCreateHeightfield" create-heightfield)
    :pointer
  (space :pointer)
  (data :pointer)
  (bplaceable :int))
(cffi:defcfun ("dGeomTransformGetInfo" geom-transform-get-info)
    :int
  (g :pointer))
(cffi:defcfun ("dGeomTransformSetInfo" geom-transform-set-info)
    :void
  (g :pointer)
  (mode :int))
(cffi:defcfun ("dGeomTransformGetCleanup" geom-transform-get-cleanup)
    :int
  (g :pointer))
(cffi:defcfun ("dGeomTransformSetCleanup" geom-transform-set-cleanup)
    :void
  (g :pointer)
  (mode :int))
(cffi:defcfun ("dGeomTransformGetGeom" geom-transform-get-geom)
    :pointer
  (g :pointer))
(cffi:defcfun ("dGeomTransformSetGeom" geom-transform-set-geom)
    :void
  (g :pointer)
  (obj :pointer))
(cffi:defcfun ("dCreateGeomTransform" create-geom-transform)
    :pointer
  (space :pointer))
(cffi:defcfun ("dGeomRayGetClosestHit" geom-ray-get-closest-hit)
    :int
  (g :pointer))
(cffi:defcfun ("dGeomRaySetClosestHit" geom-ray-set-closest-hit)
    :void
  (g :pointer)
  (closesthit :int))
(cffi:defcfun ("dGeomRayGetBackfaceCull" geom-ray-get-backface-cull)
    :int
  (g :pointer))
(cffi:defcfun ("dGeomRaySetBackfaceCull" geom-ray-set-backface-cull)
    :void
  (g :pointer)
  (backfacecull :int))
(cffi:defcfun ("dGeomRayGetFirstContact" geom-ray-get-first-contact)
    :int
  (g :pointer))
(cffi:defcfun ("dGeomRaySetFirstContact" geom-ray-set-first-contact)
    :void
  (g :pointer)
  (firstcontact :int))
(cffi:defcfun ("dGeomRayGetParams" geom-ray-get-params)
    :void
  (g :pointer)
  (firstcontact :pointer)
  (backfacecull :pointer))
(cffi:defcfun ("dGeomRaySetParams" geom-ray-set-params)
    :void
  (g :pointer)
  (firstcontact :int)
  (backfacecull :int))
(cffi:defcfun ("dGeomRayGet" geom-ray-get)
    :void
  (ray :pointer)
  (start :pointer)
  (dir :pointer))
(cffi:defcfun ("dGeomRaySet" geom-ray-set)
    :void
  (ray :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (dx :float)
  (dy :float)
  (dz :float))
(cffi:defcfun ("dGeomRayGetLength" geom-ray-get-length)
    :float
  (ray :pointer))
(cffi:defcfun ("dGeomRaySetLength" geom-ray-set-length)
    :void
  (ray :pointer)
  (length :float))
(cffi:defcfun ("dCreateRay" create-ray)
    :pointer
  (space :pointer)
  (length :float))
(cffi:defcfun ("dGeomCylinderGetParams" geom-cylinder-get-params)
    :void
  (cylinder :pointer)
  (radius :pointer)
  (length :pointer))
(cffi:defcfun ("dGeomCylinderSetParams" geom-cylinder-set-params)
    :void
  (cylinder :pointer)
  (radius :float)
  (length :float))
(cffi:defcfun ("dCreateCylinder" create-cylinder)
    :pointer
  (space :pointer)
  (radius :float)
  (length :float))
(cffi:defcfun ("dGeomCapsulePointDepth" geom-capsule-point-depth)
    :float
  (ccylinder :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dGeomCapsuleGetParams" geom-capsule-get-params)
    :void
  (ccylinder :pointer)
  (radius :pointer)
  (length :pointer))
(cffi:defcfun ("dGeomCapsuleSetParams" geom-capsule-set-params)
    :void
  (ccylinder :pointer)
  (radius :float)
  (length :float))
(cffi:defcfun ("dCreateCapsule" create-capsule)
    :pointer
  (space :pointer)
  (radius :float)
  (length :float))
(cffi:defcfun ("dGeomPlanePointDepth" geom-plane-point-depth)
    :float
  (plane :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dGeomPlaneGetParams" geom-plane-get-params)
    :void
  (plane :pointer)
  (result :pointer))
(cffi:defcfun ("dGeomPlaneSetParams" geom-plane-set-params)
    :void
  (plane :pointer)
  (a :float)
  (b :float)
  (c :float)
  (d :float))
(cffi:defcfun ("dCreatePlane" create-plane)
    :pointer
  (space :pointer)
  (a :float)
  (b :float)
  (c :float)
  (d :float))
(cffi:defcfun ("dGeomBoxPointDepth" geom-box-point-depth)
    :float
  (box :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dGeomBoxGetLengths" geom-box-get-lengths)
    :void
  (box :pointer)
  (result :pointer))
(cffi:defcfun ("dGeomBoxSetLengths" geom-box-set-lengths)
    :void
  (box :pointer)
  (lx :float)
  (ly :float)
  (lz :float))
(cffi:defcfun ("dCreateBox" create-box)
    :pointer
  (space :pointer)
  (lx :float)
  (ly :float)
  (lz :float))
(cffi:defcfun ("dGeomSetConvex" geom-set-convex)
    :void
  (g :pointer)
  (planes :pointer)
  (count :unsigned-int)
  (points :pointer)
  (pointcount :unsigned-int)
  (polygons :pointer))
(cffi:defcfun ("dCreateConvex" create-convex)
    :pointer
  (space :pointer)
  (planes :pointer)
  (planecount :unsigned-int)
  (points :pointer)
  (pointcount :unsigned-int)
  (polygons :pointer))
(cffi:defcfun ("dGeomSpherePointDepth" geom-sphere-point-depth)
    :float
  (sphere :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dGeomSphereGetRadius" geom-sphere-get-radius)
    :float
  (sphere :pointer))
(cffi:defcfun ("dGeomSphereSetRadius" geom-sphere-set-radius)
    :void
  (sphere :pointer)
  (radius :float))
(cffi:defcfun ("dCreateSphere" create-sphere)
    :pointer
  (space :pointer)
  (radius :float))
(cffi:defcfun ("dSpaceCollide2" space-collide2)
    :void
  (space1 :pointer)
  (space2 :pointer)
  (data :pointer)
  (callback :pointer))
(cffi:defcfun ("dSpaceCollide" space-collide)
    :void
  (space :pointer)
  (data :pointer)
  (callback :pointer))
(cffi:defcfun ("dCollide" collide)
    :int
  (o1 :pointer)
  (o2 :pointer)
  (flags :int)
  (contact :pointer)
  (skip :int))
(cffi:defcfun ("dGeomGetOffsetQuaternion" geom-get-offset-quaternion)
    :void
  (geom :pointer)
  (result :pointer))
(cffi:defcfun ("dGeomCopyOffsetRotation" geom-copy-offset-rotation)
    :void
  (geom :pointer)
  (r :pointer))
(cffi:defcfun ("dGeomGetOffsetRotation" geom-get-offset-rotation)
    :pointer
  (geom :pointer))
(cffi:defcfun ("dGeomCopyOffsetPosition" geom-copy-offset-position)
    :void
  (geom :pointer)
  (pos :pointer))
(cffi:defcfun ("dGeomGetOffsetPosition" geom-get-offset-position)
    :pointer
  (geom :pointer))
(cffi:defcfun ("dGeomIsOffset" geom-is-offset)
    :int
  (geom :pointer))
(cffi:defcfun ("dGeomClearOffset" geom-clear-offset)
    :void
  (geom :pointer))
(cffi:defcfun ("dGeomSetOffsetWorldQuaternion"
               geom-set-offset-world-quaternion)
    :void
  (geom :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dGeomSetOffsetWorldRotation" geom-set-offset-world-rotation)
    :void
  (geom :pointer)
  (r :pointer))
(cffi:defcfun ("dGeomSetOffsetWorldPosition" geom-set-offset-world-position)
    :void
  (geom :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dGeomSetOffsetQuaternion" geom-set-offset-quaternion)
    :void
  (geom :pointer)
  (q :pointer))
(cffi:defcfun ("dGeomSetOffsetRotation" geom-set-offset-rotation)
    :void
  (geom :pointer)
  (r :pointer))
(cffi:defcfun ("dGeomSetOffsetPosition" geom-set-offset-position)
    :void
  (geom :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dGeomVectorFromWorld" geom-vector-from-world)
    :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dGeomVectorToWorld" geom-vector-to-world)
    :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dGeomGetPosRelPoint" geom-get-pos-rel-point)
    :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dGeomGetRelPointPos" geom-get-rel-point-pos)
    :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dGeomLowLevelControl" geom-low-level-control)
    :int
  (geom :pointer)
  (controlclass :int)
  (controlcode :int)
  (datavalue :pointer)
  (datasize :pointer))
(cffi:defcfun ("dGeomIsEnabled" geom-is-enabled)
    :int
  (geom :pointer))
(cffi:defcfun ("dGeomDisable" geom-disable)
    :void
  (geom :pointer))
(cffi:defcfun ("dGeomEnable" geom-enable)
    :void
  (geom :pointer))
(cffi:defcfun ("dGeomGetCollideBits" geom-get-collide-bits)
    :unsigned-long
  (arg0 :pointer))
(cffi:defcfun ("dGeomGetCategoryBits" geom-get-category-bits)
    :unsigned-long
  (arg0 :pointer))
(cffi:defcfun ("dGeomSetCollideBits" geom-set-collide-bits)
    :void
  (geom :pointer)
  (bits :unsigned-long))
(cffi:defcfun ("dGeomSetCategoryBits" geom-set-category-bits)
    :void
  (geom :pointer)
  (bits :unsigned-long))
(cffi:defcfun ("dGeomGetClass" geom-get-class)
    :int
  (geom :pointer))
(cffi:defcfun ("dGeomGetSpace" geom-get-space)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dGeomIsSpace" geom-is-space)
    :int
  (geom :pointer))
(cffi:defcfun ("dGeomGetAABB" geom-get-aabb)
    :void
  (geom :pointer)
  (aabb :pointer))
(cffi:defcfun ("dGeomGetQuaternion" geom-get-quaternion)
    :void
  (geom :pointer)
  (result :pointer))
(cffi:defcfun ("dGeomCopyRotation" geom-copy-rotation)
    :void
  (geom :pointer)
  (r :pointer))
(cffi:defcfun ("dGeomGetRotation" geom-get-rotation)
    :pointer
  (geom :pointer))
(cffi:defcfun ("dGeomCopyPosition" geom-copy-position)
    :void
  (geom :pointer)
  (pos :pointer))
(cffi:defcfun ("dGeomGetPosition" geom-get-position)
    :pointer
  (geom :pointer))
(cffi:defcfun ("dGeomSetQuaternion" geom-set-quaternion)
    :void
  (geom :pointer)
  (q :pointer))
(cffi:defcfun ("dGeomSetRotation" geom-set-rotation)
    :void
  (geom :pointer)
  (r :pointer))
(cffi:defcfun ("dGeomSetPosition" geom-set-position)
    :void
  (geom :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dGeomGetBody" geom-get-body)
    :pointer
  (geom :pointer))
(cffi:defcfun ("dGeomSetBody" geom-set-body)
    :void
  (geom :pointer)
  (body :pointer))
(cffi:defcfun ("dGeomGetData" geom-get-data)
    :pointer
  (geom :pointer))
(cffi:defcfun ("dGeomSetData" geom-set-data)
    :void
  (geom :pointer)
  (data :pointer))
(cffi:defcfun ("dGeomDestroy" geom-destroy)
    :void
  (geom :pointer))
(cffi:defcfun ("dSpaceGetClass" space-get-class)
    :int
  (space :pointer))
(cffi:defcfun ("dSpaceGetGeom" space-get-geom)
    :pointer
  (arg0 :pointer)
  (i :int))
(cffi:defcfun ("dSpaceGetNumGeoms" space-get-num-geoms)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dSpaceClean" space-clean)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dSpaceQuery" space-query)
    :int
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dSpaceRemove" space-remove)
    :void
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dSpaceAdd" space-add)
    :void
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dSpaceGetManualCleanup" space-get-manual-cleanup)
    :int
  (space :pointer))
(cffi:defcfun ("dSpaceSetManualCleanup" space-set-manual-cleanup)
    :void
  (space :pointer)
  (mode :int))
(cffi:defcfun ("dSpaceGetSublevel" space-get-sublevel)
    :int
  (space :pointer))
(cffi:defcfun ("dSpaceSetSublevel" space-set-sublevel)
    :void
  (space :pointer)
  (sublevel :int))
(cffi:defcfun ("dSpaceGetCleanup" space-get-cleanup)
    :int
  (space :pointer))
(cffi:defcfun ("dSpaceSetCleanup" space-set-cleanup)
    :void
  (space :pointer)
  (mode :int))
(cffi:defcfun ("dHashSpaceGetLevels" hash-space-get-levels)
    :void
  (space :pointer)
  (minlevel :pointer)
  (maxlevel :pointer))
(cffi:defcfun ("dHashSpaceSetLevels" hash-space-set-levels)
    :void
  (space :pointer)
  (minlevel :int)
  (maxlevel :int))
(cffi:defcfun ("dSpaceDestroy" space-destroy)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dSweepAndPruneSpaceCreate" sweep-and-prune-space-create)
    :pointer
  (space :pointer)
  (axisorder :int))
(cffi:defcfun ("dQuadTreeSpaceCreate" quad-tree-space-create)
    :pointer
  (space :pointer)
  (center :pointer)
  (extents :pointer)
  (depth :int))
(cffi:defcfun ("dHashSpaceCreate" hash-space-create)
    :pointer
  (space :pointer))
(cffi:defcfun ("dSimpleSpaceCreate" simple-space-create)
    :pointer
  (space :pointer))
(cffi:defcfun ("dAreConnectedExcluding" are-connected-excluding)
    :int
  (body1 :pointer)
  (body2 :pointer)
  (joint-type :int))
(cffi:defcfun ("dAreConnected" are-connected)
    :int
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dConnectingJointList" connecting-joint-list)
    :int
  (arg0 :pointer)
  (arg1 :pointer)
  (arg2 :pointer))
(cffi:defcfun ("dConnectingJoint" connecting-joint)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointGetDHingeParam" joint-get-dhinge-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointSetDHingeParam" joint-set-dhinge-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointGetDHingeDistance" joint-get-dhinge-distance)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetDHingeAnchor2" joint-get-dhinge-anchor2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetDHingeAnchor1" joint-get-dhinge-anchor1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetDHingeAnchor2" joint-set-dhinge-anchor2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetDHingeAnchor1" joint-set-dhinge-anchor1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointGetDHingeAxis" joint-get-dhinge-axis)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetDHingeAxis" joint-set-dhinge-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointGetDBallParam" joint-get-dball-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointSetDBallParam" joint-set-dball-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetDBallDistance" joint-set-dball-distance)
    :void
  (arg0 :pointer)
  (dist :float))
(cffi:defcfun ("dJointGetDBallDistance" joint-get-dball-distance)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetDBallAnchor2" joint-get-dball-anchor2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetDBallAnchor1" joint-get-dball-anchor1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetDBallAnchor2" joint-set-dball-anchor2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetDBallAnchor1" joint-set-dball-anchor1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetTransmissionBacklash" joint-set-transmission-backlash)
    :void
  (j :pointer)
  (backlash :float))
(cffi:defcfun ("dJointGetTransmissionBacklash" joint-get-transmission-backlash)
    :float
  (j :pointer))
(cffi:defcfun ("dJointSetTransmissionRadius2" joint-set-transmission-radius2)
    :void
  (j :pointer)
  (radius :float))
(cffi:defcfun ("dJointSetTransmissionRadius1" joint-set-transmission-radius1)
    :void
  (j :pointer)
  (radius :float))
(cffi:defcfun ("dJointGetTransmissionRadius2" joint-get-transmission-radius2)
    :float
  (j :pointer))
(cffi:defcfun ("dJointGetTransmissionRadius1" joint-get-transmission-radius1)
    :float
  (j :pointer))
(cffi:defcfun ("dJointGetTransmissionAngle2" joint-get-transmission-angle2)
    :float
  (j :pointer))
(cffi:defcfun ("dJointGetTransmissionAngle1" joint-get-transmission-angle1)
    :float
  (j :pointer))
(cffi:defcfun ("dJointGetTransmissionAxis" joint-get-transmission-axis)
    :void
  (j :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetTransmissionAxis" joint-set-transmission-axis)
    :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointGetTransmissionRatio" joint-get-transmission-ratio)
    :float
  (j :pointer))
(cffi:defcfun ("dJointSetTransmissionRatio" joint-set-transmission-ratio)
    :void
  (j :pointer)
  (ratio :float))
(cffi:defcfun ("dJointGetTransmissionMode" joint-get-transmission-mode)
    :int
  (j :pointer))
(cffi:defcfun ("dJointSetTransmissionMode" joint-set-transmission-mode)
    :void
  (j :pointer)
  (mode :int))
(cffi:defcfun ("dJointGetTransmissionParam" joint-get-transmission-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointSetTransmissionParam" joint-set-transmission-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointGetTransmissionAnchor2" joint-get-transmission-anchor2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetTransmissionAnchor2" joint-set-transmission-anchor2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointGetTransmissionAnchor1" joint-get-transmission-anchor1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetTransmissionAnchor1" joint-set-transmission-anchor1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointGetTransmissionAxis2" joint-get-transmission-axis2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetTransmissionAxis2" joint-set-transmission-axis2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointGetTransmissionAxis1" joint-get-transmission-axis1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetTransmissionAxis1" joint-set-transmission-axis1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointGetTransmissionContactPoint2"
               joint-get-transmission-contact-point2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetTransmissionContactPoint1"
               joint-get-transmission-contact-point1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetFixedParam" joint-get-fixed-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetLMotorParam" joint-get-lmotor-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetLMotorAxis" joint-get-lmotor-axis)
    :void
  (arg0 :pointer)
  (anum :int)
  (result :pointer))
(cffi:defcfun ("dJointGetLMotorNumAxes" joint-get-lmotor-num-axes)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dJointGetAMotorMode" joint-get-amotor-mode)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dJointGetAMotorParam" joint-get-amotor-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetAMotorAngleRate" joint-get-amotor-angle-rate)
    :float
  (arg0 :pointer)
  (anum :int))
(cffi:defcfun ("dJointGetAMotorAngle" joint-get-amotor-angle)
    :float
  (arg0 :pointer)
  (anum :int))
(cffi:defcfun ("dJointGetAMotorAxisRel" joint-get-amotor-axis-rel)
    :int
  (arg0 :pointer)
  (anum :int))
(cffi:defcfun ("dJointGetAMotorAxis" joint-get-amotor-axis)
    :void
  (arg0 :pointer)
  (anum :int)
  (result :pointer))
(cffi:defcfun ("dJointGetAMotorNumAxes" joint-get-amotor-num-axes)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPistonParam" joint-get-piston-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetPistonAxis" joint-get-piston-axis)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPistonAnchor2" joint-get-piston-anchor2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPistonAnchor" joint-get-piston-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPistonAngleRate" joint-get-piston-angle-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPistonAngle" joint-get-piston-angle)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPistonPositionRate" joint-get-piston-position-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPistonPosition" joint-get-piston-position)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPUParam" joint-get-puparam)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetPUAngle2Rate" joint-get-puangle2-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPUAngle2" joint-get-puangle2)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPUAngle1Rate" joint-get-puangle1-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPUAngle1" joint-get-puangle1)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPUAngles" joint-get-puangles)
    :void
  (arg0 :pointer)
  (angle1 :pointer)
  (angle2 :pointer))
(cffi:defcfun ("dJointGetPUAxisP" joint-get-puaxis-p)
    :void
  (id :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPUAxis3" joint-get-puaxis3)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPUAxis2" joint-get-puaxis2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPUAxis1" joint-get-puaxis1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPUPositionRate" joint-get-puposition-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPUPosition" joint-get-puposition)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPUAnchor" joint-get-puanchor)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPRParam" joint-get-prparam)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetPRAxis2" joint-get-praxis2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPRAxis1" joint-get-praxis1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetPRAngleRate" joint-get-prangle-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPRAngle" joint-get-prangle)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPRPositionRate" joint-get-prposition-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPRPosition" joint-get-prposition)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetPRAnchor" joint-get-pranchor)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetUniversalAngle2Rate" joint-get-universal-angle2-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetUniversalAngle1Rate" joint-get-universal-angle1-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetUniversalAngle2" joint-get-universal-angle2)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetUniversalAngle1" joint-get-universal-angle1)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetUniversalAngles" joint-get-universal-angles)
    :void
  (arg0 :pointer)
  (angle1 :pointer)
  (angle2 :pointer))
(cffi:defcfun ("dJointGetUniversalParam" joint-get-universal-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetUniversalAxis2" joint-get-universal-axis2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetUniversalAxis1" joint-get-universal-axis1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetUniversalAnchor2" joint-get-universal-anchor2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetUniversalAnchor" joint-get-universal-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetHinge2Angle2Rate" joint-get-hinge2-angle2-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetHinge2Angle1Rate" joint-get-hinge2-angle1-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetHinge2Angle2" joint-get-hinge2-angle2)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetHinge2Angle1" joint-get-hinge2-angle1)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetHinge2Param" joint-get-hinge2-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetHinge2Axis2" joint-get-hinge2-axis2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetHinge2Axis1" joint-get-hinge2-axis1)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetHinge2Anchor2" joint-get-hinge2-anchor2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetHinge2Anchor" joint-get-hinge2-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetSliderParam" joint-get-slider-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetSliderAxis" joint-get-slider-axis)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetSliderPositionRate" joint-get-slider-position-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetSliderPosition" joint-get-slider-position)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetHingeAngleRate" joint-get-hinge-angle-rate)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetHingeAngle" joint-get-hinge-angle)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dJointGetHingeParam" joint-get-hinge-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetHingeAxis" joint-get-hinge-axis)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetHingeAnchor2" joint-get-hinge-anchor2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetHingeAnchor" joint-get-hinge-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetBallParam" joint-get-ball-param)
    :float
  (arg0 :pointer)
  (parameter :int))
(cffi:defcfun ("dJointGetBallAnchor2" joint-get-ball-anchor2)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointGetBallAnchor" joint-get-ball-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dJointSetPlane2DAngleParam" joint-set-plane2-dangle-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetPlane2DYParam" joint-set-plane2-dyparam)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetPlane2DXParam" joint-set-plane2-dxparam)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetLMotorParam" joint-set-lmotor-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetLMotorAxis" joint-set-lmotor-axis)
    :void
  (arg0 :pointer)
  (anum :int)
  (rel :int)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetLMotorNumAxes" joint-set-lmotor-num-axes)
    :void
  (arg0 :pointer)
  (num :int))
(cffi:defcfun ("dJointAddAMotorTorques" joint-add-amotor-torques)
    :void
  (arg0 :pointer)
  (torque1 :float)
  (torque2 :float)
  (torque3 :float))
(cffi:defcfun ("dJointSetAMotorMode" joint-set-amotor-mode)
    :void
  (arg0 :pointer)
  (mode :int))
(cffi:defcfun ("dJointSetAMotorParam" joint-set-amotor-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetAMotorAngle" joint-set-amotor-angle)
    :void
  (arg0 :pointer)
  (anum :int)
  (angle :float))
(cffi:defcfun ("dJointSetAMotorAxis" joint-set-amotor-axis)
    :void
  (arg0 :pointer)
  (anum :int)
  (rel :int)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetAMotorNumAxes" joint-set-amotor-num-axes)
    :void
  (arg0 :pointer)
  (num :int))
(cffi:defcfun ("dJointSetFixedParam" joint-set-fixed-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetFixed" joint-set-fixed)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dJointAddPistonForce" joint-add-piston-force)
    :void
  (joint :pointer)
  (force :float))
(cffi:defcfun ("dJointSetPistonParam" joint-set-piston-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetPistonAxisDelta" joint-set-piston-axis-delta)
    :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))
(cffi:defcfun ("dJointSetPistonAxis" joint-set-piston-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetPistonAnchorOffset" joint-set-piston-anchor-offset)
    :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))
(cffi:defcfun ("dJointSetPistonAnchor" joint-set-piston-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointAddPUTorque" joint-add-putorque)
    :void
  (j :pointer)
  (torque :float))
(cffi:defcfun ("dJointSetPUParam" joint-set-puparam)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetPUAxisP" joint-set-puaxis-p)
    :void
  (id :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetPUAxis3" joint-set-puaxis3)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetPUAxis2" joint-set-puaxis2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetPUAxis1" joint-set-puaxis1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetPUAnchorOffset" joint-set-puanchor-offset)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))
(cffi:defcfun ("dJointSetPUAnchorDelta" joint-set-puanchor-delta)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))
(cffi:defcfun ("dJointSetPUAnchor" joint-set-puanchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointAddPRTorque" joint-add-prtorque)
    :void
  (j :pointer)
  (torque :float))
(cffi:defcfun ("dJointSetPRParam" joint-set-prparam)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetPRAxis2" joint-set-praxis2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetPRAxis1" joint-set-praxis1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetPRAnchor" joint-set-pranchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointAddUniversalTorques" joint-add-universal-torques)
    :void
  (joint :pointer)
  (torque1 :float)
  (torque2 :float))
(cffi:defcfun ("dJointSetUniversalParam" joint-set-universal-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetUniversalAxis2Offset"
               joint-set-universal-axis2-offset)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (offset1 :float)
  (offset2 :float))
(cffi:defcfun ("dJointSetUniversalAxis2" joint-set-universal-axis2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetUniversalAxis1Offset"
               joint-set-universal-axis1-offset)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (offset1 :float)
  (offset2 :float))
(cffi:defcfun ("dJointSetUniversalAxis1" joint-set-universal-axis1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetUniversalAnchor" joint-set-universal-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointAddHinge2Torques" joint-add-hinge2-torques)
    :void
  (joint :pointer)
  (torque1 :float)
  (torque2 :float))
(cffi:defcfun ("dJointSetHinge2Param" joint-set-hinge2-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetHinge2Axis2" joint-set-hinge2-axis2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetHinge2Axis1" joint-set-hinge2-axis1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetHinge2Anchor" joint-set-hinge2-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointAddSliderForce" joint-add-slider-force)
    :void
  (joint :pointer)
  (force :float))
(cffi:defcfun ("dJointSetSliderParam" joint-set-slider-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetSliderAxisDelta" joint-set-slider-axis-delta)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))
(cffi:defcfun ("dJointSetSliderAxis" joint-set-slider-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointAddHingeTorque" joint-add-hinge-torque)
    :void
  (joint :pointer)
  (torque :float))
(cffi:defcfun ("dJointSetHingeParam" joint-set-hinge-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetHingeAxisOffset" joint-set-hinge-axis-offset)
    :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (angle :float))
(cffi:defcfun ("dJointSetHingeAxis" joint-set-hinge-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetHingeAnchorDelta" joint-set-hinge-anchor-delta)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))
(cffi:defcfun ("dJointSetHingeAnchor" joint-set-hinge-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetBallParam" joint-set-ball-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))
(cffi:defcfun ("dJointSetBallAnchor2" joint-set-ball-anchor2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointSetBallAnchor" joint-set-ball-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dJointGetFeedback" joint-get-feedback)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dJointSetFeedback" joint-set-feedback)
    :void
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointGetBody" joint-get-body)
    :pointer
  (arg0 :pointer)
  (index :int))
(cffi:defcfun ("dJointGetType" joint-get-type)
    joint-type
  (arg0 :pointer))
(cffi:defcfun ("dJointGetData" joint-get-data)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dJointSetData" joint-set-data)
    :void
  (arg0 :pointer)
  (data :pointer))
(cffi:defcfun ("dJointIsEnabled" joint-is-enabled)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dJointDisable" joint-disable)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dJointEnable" joint-enable)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dJointAttach" joint-attach)
    :void
  (arg0 :pointer)
  (body1 :pointer)
  (body2 :pointer))
(cffi:defcfun ("dJointGetNumBodies" joint-get-num-bodies)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dJointGroupEmpty" joint-group-empty)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dJointGroupDestroy" joint-group-destroy)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dJointGroupCreate" joint-group-create)
    :pointer
  (max-size :int))
(cffi:defcfun ("dJointDestroy" joint-destroy)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dJointCreateTransmission" joint-create-transmission)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateDHinge" joint-create-dhinge)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateDBall" joint-create-dball)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreatePlane2D" joint-create-plane2-d)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateLMotor" joint-create-lmotor)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateAMotor" joint-create-amotor)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateNull" joint-create-null)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateFixed" joint-create-fixed)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreatePiston" joint-create-piston)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreatePU" joint-create-pu)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreatePR" joint-create-pr)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateUniversal" joint-create-universal)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateHinge2" joint-create-hinge2)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateContact" joint-create-contact)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer)
  (arg2 :pointer))
(cffi:defcfun ("dJointCreateSlider" joint-create-slider)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateHinge" joint-create-hinge)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dJointCreateBall" joint-create-ball)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))
(cffi:defcfun ("dBodySetGyroscopicMode" body-set-gyroscopic-mode)
    :void
  (b :pointer)
  (enabled :int))
(cffi:defcfun ("dBodyGetGyroscopicMode" body-get-gyroscopic-mode)
    :int
  (b :pointer))
(cffi:defcfun ("dBodySetMaxAngularSpeed" body-set-max-angular-speed)
    :void
  (b :pointer)
  (max-speed :float))
(cffi:defcfun ("dBodyGetMaxAngularSpeed" body-get-max-angular-speed)
    :float
  (b :pointer))
(cffi:defcfun ("dBodySetAngularDampingThreshold"
               body-set-angular-damping-threshold)
    :void
  (b :pointer)
  (threshold :float))
(cffi:defcfun ("dBodyGetAngularDampingThreshold"
               body-get-angular-damping-threshold)
    :float
  (b :pointer))
(cffi:defcfun ("dBodySetLinearDampingThreshold"
               body-set-linear-damping-threshold)
    :void
  (b :pointer)
  (threshold :float))
(cffi:defcfun ("dBodyGetLinearDampingThreshold"
               body-get-linear-damping-threshold)
    :float
  (b :pointer))
(cffi:defcfun ("dBodySetDamping" body-set-damping)
    :void
  (b :pointer)
  (linear-scale :float)
  (angular-scale :float))
(cffi:defcfun ("dBodySetAngularDamping" body-set-angular-damping)
    :void
  (b :pointer)
  (scale :float))
(cffi:defcfun ("dBodyGetAngularDamping" body-get-angular-damping)
    :float
  (b :pointer))
(cffi:defcfun ("dBodySetLinearDamping" body-set-linear-damping)
    :void
  (b :pointer)
  (scale :float))
(cffi:defcfun ("dBodyGetLinearDamping" body-get-linear-damping)
    :float
  (b :pointer))
(cffi:defcfun ("dBodySetDampingDefaults" body-set-damping-defaults)
    :void
  (b :pointer))
(cffi:defcfun ("dBodyGetNextGeom" body-get-next-geom)
    :pointer
  (g :pointer))
(cffi:defcfun ("dBodyGetFirstGeom" body-get-first-geom)
    :pointer
  (b :pointer))
(cffi:defcfun ("dBodySetMovedCallback" body-set-moved-callback)
    :void
  (b :pointer)
  (callback :pointer))
(cffi:defcfun ("dBodyGetGravityMode" body-get-gravity-mode)
    :int
  (b :pointer))
(cffi:defcfun ("dBodySetGravityMode" body-set-gravity-mode)
    :void
  (b :pointer)
  (mode :int))
(cffi:defcfun ("dBodyIsEnabled" body-is-enabled)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dBodyDisable" body-disable)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dBodyEnable" body-enable)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dBodyIsKinematic" body-is-kinematic)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dBodySetKinematic" body-set-kinematic)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dBodySetDynamic" body-set-dynamic)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dBodyGetJoint" body-get-joint)
    :pointer
  (arg0 :pointer)
  (index :int))
(cffi:defcfun ("dBodyGetNumJoints" body-get-num-joints)
    :int
  (b :pointer))
(cffi:defcfun ("dBodyGetFiniteRotationAxis" body-get-finite-rotation-axis)
    :void
  (arg0 :pointer)
  (result :pointer))
(cffi:defcfun ("dBodyGetFiniteRotationMode" body-get-finite-rotation-mode)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dBodySetFiniteRotationAxis" body-set-finite-rotation-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dBodySetFiniteRotationMode" body-set-finite-rotation-mode)
    :void
  (arg0 :pointer)
  (mode :int))
(cffi:defcfun ("dBodyVectorFromWorld" body-vector-from-world)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dBodyVectorToWorld" body-vector-to-world)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dBodyGetPosRelPoint" body-get-pos-rel-point)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dBodyGetPointVel" body-get-point-vel)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dBodyGetRelPointVel" body-get-rel-point-vel)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dBodyGetRelPointPos" body-get-rel-point-pos)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))
(cffi:defcfun ("dBodySetTorque" body-set-torque)
    :void
  (b :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dBodySetForce" body-set-force)
    :void
  (b :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dBodyGetTorque" body-get-torque)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodyGetForce" body-get-force)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodyAddRelForceAtRelPos" body-add-rel-force-at-rel-pos)
    :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float)
  (px :float)
  (py :float)
  (pz :float))
(cffi:defcfun ("dBodyAddRelForceAtPos" body-add-rel-force-at-pos)
    :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float)
  (px :float)
  (py :float)
  (pz :float))
(cffi:defcfun ("dBodyAddForceAtRelPos" body-add-force-at-rel-pos)
    :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float)
  (px :float)
  (py :float)
  (pz :float))
(cffi:defcfun ("dBodyAddForceAtPos" body-add-force-at-pos)
    :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float)
  (px :float)
  (py :float)
  (pz :float))
(cffi:defcfun ("dBodyAddRelTorque" body-add-rel-torque)
    :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float))
(cffi:defcfun ("dBodyAddRelForce" body-add-rel-force)
    :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float))
(cffi:defcfun ("dBodyAddTorque" body-add-torque)
    :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float))
(cffi:defcfun ("dBodyAddForce" body-add-force)
    :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float))
(cffi:defcfun ("dBodyGetMass" body-get-mass)
    :void
  (arg0 :pointer)
  (mass :pointer))
(cffi:defcfun ("dBodySetMass" body-set-mass)
    :void
  (arg0 :pointer)
  (mass :pointer))
(cffi:defcfun ("dBodyGetAngularVel" body-get-angular-vel)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodyGetLinearVel" body-get-linear-vel)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodyCopyQuaternion" body-copy-quaternion)
    :void
  (body :pointer)
  (quat :pointer))
(cffi:defcfun ("dBodyGetQuaternion" body-get-quaternion)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodyCopyRotation" body-copy-rotation)
    :void
  (arg0 :pointer)
  (r :pointer))
(cffi:defcfun ("dBodyGetRotation" body-get-rotation)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodyCopyPosition" body-copy-position)
    :void
  (body :pointer)
  (pos :pointer))
(cffi:defcfun ("dBodyGetPosition" body-get-position)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodySetAngularVel" body-set-angular-vel)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dBodySetLinearVel" body-set-linear-vel)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dBodySetQuaternion" body-set-quaternion)
    :void
  (arg0 :pointer)
  (q :pointer))
(cffi:defcfun ("dBodySetRotation" body-set-rotation)
    :void
  (arg0 :pointer)
  (r :pointer))
(cffi:defcfun ("dBodySetPosition" body-set-position)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dBodyGetData" body-get-data)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodySetData" body-set-data)
    :void
  (arg0 :pointer)
  (data :pointer))
(cffi:defcfun ("dBodyDestroy" body-destroy)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dBodyCreate" body-create)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodyGetWorld" body-get-world)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dBodySetAutoDisableDefaults" body-set-auto-disable-defaults)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dBodySetAutoDisableFlag" body-set-auto-disable-flag)
    :void
  (arg0 :pointer)
  (do-auto-disable :int))
(cffi:defcfun ("dBodyGetAutoDisableFlag" body-get-auto-disable-flag)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dBodySetAutoDisableTime" body-set-auto-disable-time)
    :void
  (arg0 :pointer)
  (time :float))
(cffi:defcfun ("dBodyGetAutoDisableTime" body-get-auto-disable-time)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dBodySetAutoDisableSteps" body-set-auto-disable-steps)
    :void
  (arg0 :pointer)
  (steps :int))
(cffi:defcfun ("dBodyGetAutoDisableSteps" body-get-auto-disable-steps)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dBodySetAutoDisableAverageSamplesCount"
               body-set-auto-disable-average-samples-count)
    :void
  (arg0 :pointer)
  (average-samples-count :unsigned-int))
(cffi:defcfun ("dBodyGetAutoDisableAverageSamplesCount"
               body-get-auto-disable-average-samples-count)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dBodySetAutoDisableAngularThreshold"
               body-set-auto-disable-angular-threshold)
    :void
  (arg0 :pointer)
  (angular-average-threshold :float))
(cffi:defcfun ("dBodyGetAutoDisableAngularThreshold"
               body-get-auto-disable-angular-threshold)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dBodySetAutoDisableLinearThreshold"
               body-set-auto-disable-linear-threshold)
    :void
  (arg0 :pointer)
  (linear-average-threshold :float))
(cffi:defcfun ("dBodyGetAutoDisableLinearThreshold"
               body-get-auto-disable-linear-threshold)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetMaxAngularSpeed" world-set-max-angular-speed)
    :void
  (w :pointer)
  (max-speed :float))
(cffi:defcfun ("dWorldGetMaxAngularSpeed" world-get-max-angular-speed)
    :float
  (w :pointer))
(cffi:defcfun ("dWorldSetDamping" world-set-damping)
    :void
  (w :pointer)
  (linear-scale :float)
  (angular-scale :float))
(cffi:defcfun ("dWorldSetAngularDamping" world-set-angular-damping)
    :void
  (w :pointer)
  (scale :float))
(cffi:defcfun ("dWorldGetAngularDamping" world-get-angular-damping)
    :float
  (w :pointer))
(cffi:defcfun ("dWorldSetLinearDamping" world-set-linear-damping)
    :void
  (w :pointer)
  (scale :float))
(cffi:defcfun ("dWorldGetLinearDamping" world-get-linear-damping)
    :float
  (w :pointer))
(cffi:defcfun ("dWorldSetAngularDampingThreshold"
               world-set-angular-damping-threshold)
    :void
  (w :pointer)
  (threshold :float))
(cffi:defcfun ("dWorldGetAngularDampingThreshold"
               world-get-angular-damping-threshold)
    :float
  (w :pointer))
(cffi:defcfun ("dWorldSetLinearDampingThreshold"
               world-set-linear-damping-threshold)
    :void
  (w :pointer)
  (threshold :float))
(cffi:defcfun ("dWorldGetLinearDampingThreshold"
               world-get-linear-damping-threshold)
    :float
  (w :pointer))
(cffi:defcfun ("dWorldSetAutoDisableFlag" world-set-auto-disable-flag)
    :void
  (arg0 :pointer)
  (do-auto-disable :int))
(cffi:defcfun ("dWorldGetAutoDisableFlag" world-get-auto-disable-flag)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetAutoDisableTime" world-set-auto-disable-time)
    :void
  (arg0 :pointer)
  (time :float))
(cffi:defcfun ("dWorldGetAutoDisableTime" world-get-auto-disable-time)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetAutoDisableSteps" world-set-auto-disable-steps)
    :void
  (arg0 :pointer)
  (steps :int))
(cffi:defcfun ("dWorldGetAutoDisableSteps" world-get-auto-disable-steps)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetAutoDisableAverageSamplesCount"
               world-set-auto-disable-average-samples-count)
    :void
  (arg0 :pointer)
  (average-samples-count :unsigned-int))
(cffi:defcfun ("dWorldGetAutoDisableAverageSamplesCount"
               world-get-auto-disable-average-samples-count)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetAutoDisableAngularThreshold"
               world-set-auto-disable-angular-threshold)
    :void
  (arg0 :pointer)
  (angular-average-threshold :float))
(cffi:defcfun ("dWorldGetAutoDisableAngularThreshold"
               world-get-auto-disable-angular-threshold)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetAutoDisableLinearThreshold"
               world-set-auto-disable-linear-threshold)
    :void
  (arg0 :pointer)
  (linear-average-threshold :float))
(cffi:defcfun ("dWorldGetAutoDisableLinearThreshold"
               world-get-auto-disable-linear-threshold)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldGetContactSurfaceLayer" world-get-contact-surface-layer)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetContactSurfaceLayer" world-set-contact-surface-layer)
    :void
  (arg0 :pointer)
  (depth :float))
(cffi:defcfun ("dWorldGetContactMaxCorrectingVel"
               world-get-contact-max-correcting-vel)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetContactMaxCorrectingVel"
               world-set-contact-max-correcting-vel)
    :void
  (arg0 :pointer)
  (vel :float))
(cffi:defcfun ("dWorldGetQuickStepW" world-get-quick-step-w)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetQuickStepW" world-set-quick-step-w)
    :void
  (arg0 :pointer)
  (over-relaxation :float))
(cffi:defcfun ("dWorldGetQuickStepNumIterations"
               world-get-quick-step-num-iterations)
    :int
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetQuickStepNumIterations"
               world-set-quick-step-num-iterations)
    :void
  (arg0 :pointer)
  (num :int))
(cffi:defcfun ("dWorldImpulseToForce" world-impulse-to-force)
    :void
  (arg0 :pointer)
  (stepsize :float)
  (ix :float)
  (iy :float)
  (iz :float)
  (force :pointer))
(cffi:defcfun ("dWorldQuickStep" world-quick-step)
    :int
  (w :pointer)
  (stepsize :float))
(cffi:defcfun ("dWorldStep" world-step)
    :int
  (w :pointer)
  (stepsize :float))
(cffi:defcfun ("dWorldSetStepThreadingImplementation"
               world-set-step-threading-implementation)
    :void
  (w :pointer)
  (functions-info :pointer)
  (threading-impl :pointer))
(cffi:defcfun ("dWorldSetStepMemoryManager" world-set-step-memory-manager)
    :int
  (w :pointer)
  (memfuncs :pointer))
(cffi:defcfun ("dWorldSetStepMemoryReservationPolicy"
               world-set-step-memory-reservation-policy)
    :int
  (w :pointer)
  (policyinfo :pointer))
(cffi:defcfun ("dWorldCleanupWorkingMemory" world-cleanup-working-memory)
    :void
  (w :pointer))
(cffi:defcfun ("dWorldUseSharedWorkingMemory" world-use-shared-working-memory)
    :int
  (w :pointer)
  (from-world :pointer))
(cffi:defcfun ("dWorldGetStepIslandsProcessingMaxThreadCount"
               world-get-step-islands-processing-max-thread-count)
    :unsigned-int
  (w :pointer))
(cffi:defcfun ("dWorldSetStepIslandsProcessingMaxThreadCount"
               world-set-step-islands-processing-max-thread-count)
    :void
  (w :pointer)
  (count :unsigned-int))
(cffi:defcfun ("dWorldGetCFM" world-get-cfm)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetCFM" world-set-cfm)
    :void
  (arg0 :pointer)
  (cfm :float))
(cffi:defcfun ("dWorldGetERP" world-get-erp)
    :float
  (arg0 :pointer))
(cffi:defcfun ("dWorldSetERP" world-set-erp)
    :void
  (arg0 :pointer)
  (erp :float))
(cffi:defcfun ("dWorldGetGravity" world-get-gravity)
    :void
  (arg0 :pointer)
  (gravity :pointer))
(cffi:defcfun ("dWorldSetGravity" world-set-gravity)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dWorldGetData" world-get-data)
    :pointer
  (world :pointer))
(cffi:defcfun ("dWorldSetData" world-set-data)
    :void
  (world :pointer)
  (data :pointer))
(cffi:defcfun ("dWorldDestroy" world-destroy)
    :void
  (world :pointer))
(cffi:defcfun ("dWorldCreate" world-create)
    :pointer)
(cffi:defcfun ("dMassSetCappedCylinderTotal" mass-set-capped-cylinder-total)
    :void
  (a :pointer)
  (b :float)
  (c :int)
  (d :float)
  (e :float))
(cffi:defcfun ("dMassSetCappedCylinder" mass-set-capped-cylinder)
    :void
  (a :pointer)
  (b :float)
  (c :int)
  (d :float)
  (e :float))
(cffi:defcfun ("dMassAdd" mass-add)
    :void
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMassRotate" mass-rotate)
    :void
  (arg0 :pointer)
  (r :pointer))
(cffi:defcfun ("dMassTranslate" mass-translate)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))
(cffi:defcfun ("dMassAdjust" mass-adjust)
    :void
  (arg0 :pointer)
  (newmass :float))
(cffi:defcfun ("dMassSetTrimeshTotal" mass-set-trimesh-total)
    :void
  (m :pointer)
  (total-mass :float)
  (g :pointer))
(cffi:defcfun ("dMassSetTrimesh" mass-set-trimesh)
    :void
  (arg0 :pointer)
  (density :float)
  (g :pointer))
(cffi:defcfun ("dMassSetBoxTotal" mass-set-box-total)
    :void
  (arg0 :pointer)
  (total-mass :float)
  (lx :float)
  (ly :float)
  (lz :float))
(cffi:defcfun ("dMassSetBox" mass-set-box)
    :void
  (arg0 :pointer)
  (density :float)
  (lx :float)
  (ly :float)
  (lz :float))
(cffi:defcfun ("dMassSetCylinderTotal" mass-set-cylinder-total)
    :void
  (arg0 :pointer)
  (total-mass :float)
  (direction :int)
  (radius :float)
  (length :float))
(cffi:defcfun ("dMassSetCylinder" mass-set-cylinder)
    :void
  (arg0 :pointer)
  (density :float)
  (direction :int)
  (radius :float)
  (length :float))
(cffi:defcfun ("dMassSetCapsuleTotal" mass-set-capsule-total)
    :void
  (arg0 :pointer)
  (total-mass :float)
  (direction :int)
  (radius :float)
  (length :float))
(cffi:defcfun ("dMassSetCapsule" mass-set-capsule)
    :void
  (arg0 :pointer)
  (density :float)
  (direction :int)
  (radius :float)
  (length :float))
(cffi:defcfun ("dMassSetSphereTotal" mass-set-sphere-total)
    :void
  (arg0 :pointer)
  (total-mass :float)
  (radius :float))
(cffi:defcfun ("dMassSetSphere" mass-set-sphere)
    :void
  (arg0 :pointer)
  (density :float)
  (radius :float))
(cffi:defcfun ("dMassSetParameters" mass-set-parameters)
    :void
  (arg0 :pointer)
  (themass :float)
  (cgx :float)
  (cgy :float)
  (cgz :float)
  (i11 :float)
  (i22 :float)
  (i33 :float)
  (i12 :float)
  (i13 :float)
  (i23 :float))
(cffi:defcfun ("dMassSetZero" mass-set-zero)
    :void
  (arg0 :pointer))
(cffi:defcfun ("dMassCheck" mass-check)
    :int
  (m :pointer))
(cffi:defcfun ("dRemoveRowCol" remove-row-col)
    :void
  (a :pointer)
  (n :int)
  (nskip :int)
  (r :int))
(cffi:defcfun ("dLDLTRemove" ldltremove)
    :void
  (a :pointer)
  (p :pointer)
  (l :pointer)
  (d :pointer)
  (n1 :int)
  (n2 :int)
  (r :int)
  (nskip :int))
(cffi:defcfun ("dLDLTAddTL" ldltadd-tl)
    :void
  (l :pointer)
  (d :pointer)
  (a :pointer)
  (n :int)
  (nskip :int))
(cffi:defcfun ("dSolveLDLT" solve-ldlt)
    :void
  (l :pointer)
  (d :pointer)
  (b :pointer)
  (n :int)
  (nskip :int))
(cffi:defcfun ("dVectorScale" vector-scale)
    :void
  (a :pointer)
  (d :pointer)
  (n :int))
(cffi:defcfun ("dSolveL1T" solve-l1-t)
    :void
  (l :pointer)
  (b :pointer)
  (n :int)
  (nskip :int))
(cffi:defcfun ("dSolveL1" solve-l1)
    :void
  (l :pointer)
  (b :pointer)
  (n :int)
  (nskip :int))
(cffi:defcfun ("dFactorLDLT" factor-ldlt)
    :void
  (a :pointer)
  (d :pointer)
  (n :int)
  (nskip :int))
(cffi:defcfun ("dIsPositiveDefinite" is-positive-definite)
    :int
  (a :pointer)
  (n :int))
(cffi:defcfun ("dInvertPDMatrix" invert-pdmatrix)
    :int
  (a :pointer)
  (ainv :pointer)
  (n :int))
(cffi:defcfun ("dSolveCholesky" solve-cholesky)
    :void
  (l :pointer)
  (b :pointer)
  (n :int))
(cffi:defcfun ("dFactorCholesky" factor-cholesky)
    :int
  (a :pointer)
  (n :int))
(cffi:defcfun ("dMultiply2" multiply2)
    :void
  (a :pointer)
  (b :pointer)
  (c :pointer)
  (p :int)
  (q :int)
  (r :int))
(cffi:defcfun ("dMultiply1" multiply1)
    :void
  (a :pointer)
  (b :pointer)
  (c :pointer)
  (p :int)
  (q :int)
  (r :int))
(cffi:defcfun ("dMultiply0" multiply0)
    :void
  (a :pointer)
  (b :pointer)
  (c :pointer)
  (p :int)
  (q :int)
  (r :int))
(cffi:defcfun ("dDot" dot)
    :float
  (a :pointer)
  (b :pointer)
  (n :int))
(cffi:defcfun ("dSetValue" set-value)
    :void
  (a :pointer)
  (n :int)
  (value :float))
(cffi:defcfun ("dSetZero" set-zero)
    :void
  (a :pointer)
  (n :int))
(cffi:defcfun ("dOrthogonalizeR" orthogonalize-r)
    :void
  (m :pointer))
(cffi:defcfun ("dPlaneSpace" plane-space)
    :void
  (n :pointer)
  (p :pointer)
  (q :pointer))
(cffi:defcfun ("dNormalize4" normalize4)
    :void
  (a :pointer))
(cffi:defcfun ("dNormalize3" normalize3)
    :void
  (a :pointer))
(cffi:defcfun ("dSafeNormalize4" safe-normalize4)
    :int
  (a :pointer))
(cffi:defcfun ("dSafeNormalize3" safe-normalize3)
    :int
  (a :pointer))
(cffi:defcfun ("dInvertMatrix3" invert-matrix3)
    :float
  (dst :pointer)
  (ma :pointer))
(cffi:defcfun ("dCalcMatrix3Det" calc-matrix3-det)
    :float
  (mat :pointer))
(cffi:defcfun ("dMultiplyAdd2-333" multiply-add2-333)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyAdd1-333" multiply-add1-333)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyAdd0-333" multiply-add0-333)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyAdd0-133" multiply-add0-133)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyAdd1-331" multiply-add1-331)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyAdd0-331" multiply-add0-331)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiply2-333" multiply2-333)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiply1-333" multiply1-333)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiply0-333" multiply0-333)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiply0-133" multiply0-133)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiply1-331" multiply1-331)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiply0-331" multiply0-331)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyHelper1-133" multiply-helper1-133)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyHelper0-133" multiply-helper0-133)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyHelper1-331" multiply-helper1-331)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMultiplyHelper0-331" multiply-helper0-331)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcPointsDistance3" calc-points-distance3)
    :float
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dSetCrossMatrixMinus" set-cross-matrix-minus)
    :void
  (res :pointer)
  (a :pointer)
  (skip :unsigned-int))
(cffi:defcfun ("dSetCrossMatrixPlus" set-cross-matrix-plus)
    :void
  (res :pointer)
  (a :pointer)
  (skip :unsigned-int))
(cffi:defcfun ("dSubtractVectorCross3" subtract-vector-cross3)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dAddVectorCross3" add-vector-cross3)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorCross3-444" calc-vector-cross3-444)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorCross3-441" calc-vector-cross3-441)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorCross3-414" calc-vector-cross3-414)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorCross3-411" calc-vector-cross3-411)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorCross3-144" calc-vector-cross3-144)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorCross3-141" calc-vector-cross3-141)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorCross3-114" calc-vector-cross3-114)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorCross3" calc-vector-cross3)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorDot3-44" calc-vector-dot3-44)
    :float
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorDot3-41" calc-vector-dot3-41)
    :float
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorDot3-14" calc-vector-dot3-14)
    :float
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorDot3-33" calc-vector-dot3-33)
    :float
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorDot3-31" calc-vector-dot3-31)
    :float
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorDot3-13" calc-vector-dot3-13)
    :float
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcVectorDot3" calc-vector-dot3)
    :float
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dCalcPointDepth3" calc-point-depth3)
    :float
  (test-p :pointer)
  (plane-p :pointer)
  (plane-n :pointer))
(cffi:defcfun ("dCalcVectorLengthSquare3" calc-vector-length-square3)
    :float
  (a :pointer))
(cffi:defcfun ("dCalcVectorLength3" calc-vector-length3)
    :float
  (a :pointer))
(cffi:defcfun ("dGetMatrixColumn3" get-matrix-column3)
    :void
  (res :pointer)
  (a :pointer)
  (n :unsigned-int))
(cffi:defcfun ("dCopyMatrix4x3" copy-matrix4x3)
    :void
  (res :pointer)
  (a :pointer))
(cffi:defcfun ("dCopyMatrix4x4" copy-matrix4x4)
    :void
  (res :pointer)
  (a :pointer))
(cffi:defcfun ("dCopyVector4" copy-vector4)
    :void
  (res :pointer)
  (a :pointer))
(cffi:defcfun ("dCopyNegatedVector3" copy-negated-vector3)
    :void
  (res :pointer)
  (a :pointer))
(cffi:defcfun ("dCopyScaledVector3" copy-scaled-vector3)
    :void
  (res :pointer)
  (a :pointer)
  (nscale :float))
(cffi:defcfun ("dCopyVector3" copy-vector3)
    :void
  (res :pointer)
  (a :pointer))
(cffi:defcfun ("dNegateVector3" negate-vector3)
    :void
  (res :pointer))
(cffi:defcfun ("dScaleVector3" scale-vector3)
    :void
  (res :pointer)
  (nscale :float))
(cffi:defcfun ("dAddScaledVectors3" add-scaled-vectors3)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer)
  (a-scale :float)
  (b-scale :float))
(cffi:defcfun ("dSubtractVectors3" subtract-vectors3)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dAddVectors3" add-vectors3)
    :void
  (res :pointer)
  (a :pointer)
  (b :pointer))
(cffi:defcfun ("dMessage" message)
    :void
  (num :int)
  (msg :string)
  cl:&rest)
(cffi:defcfun ("dDebug" debug)
    :void
  (num :int)
  (msg :string)
  cl:&rest)
(cffi:defcfun ("dError" error)
    :void
  (num :int)
  (msg :string)
  cl:&rest)
(cffi:defcfun ("dGetMessageHandler" get-message-handler)
    :pointer)
(cffi:defcfun ("dGetDebugHandler" get-debug-handler)
    :pointer)
(cffi:defcfun ("dGetErrorHandler" get-error-handler)
    :pointer)
(cffi:defcfun ("dSetMessageHandler" set-message-handler)
    :void
  (fn :pointer))
(cffi:defcfun ("dSetDebugHandler" set-debug-handler)
    :void
  (fn :pointer))
(cffi:defcfun ("dSetErrorHandler" set-error-handler)
    :void
  (fn :pointer))
(cffi:defcfun ("dCloseODE" close-ode)
    :void)
(cffi:defcfun ("dCleanupODEAllDataForThread" cleanup-odeall-data-for-thread)
    :void)
(cffi:defcfun ("dAllocateODEDataForThread" allocate-odedata-for-thread)
    :int
  (uiallocateflags :unsigned-int))
(cffi:defcfun ("dInitODE2" init-ode2)
    :int
  (uiinitflags :unsigned-int))
(cffi:defcfun ("dInitODE" init-ode)
    :void)
(cffi:defcfun ("dCheckConfiguration" check-configuration)
    :int
  (token :string))
(cffi:defcfun ("dGetConfiguration" get-configuration)
    :string)
(cffi:defcfun ("dGeomGetBodyNext" geom-get-body-next)
    :pointer
  (arg0 :pointer))
(cffi:defcfun ("dGeomMoved" geom-moved)
    :void
  (arg0 :pointer))
