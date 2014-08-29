/*
Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
    
pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module BndLib

#pragma SWIG nowarn=504,325,503

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/StandardDefines.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i

%include BndLib_required_python_modules.i
%include BndLib_headers.i

/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%rename(bndlib) BndLib;
%nodefaultctor BndLib;
class BndLib {
	public:
		%feature("autodoc", "Args:
	L(gp_Lin)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Bounding box for a surface trimmed or not  Adds the segment of the line L limited by the two  
parameter values P1 and P2, to the bounding box B, and  
then enlarges B by the tolerance value Tol.  
Tol is the tolerance value to enlarge the minimun and maximum dimension  
P1 and P2 may represent infinite values.  
Exceptions  
Standard_Failure if P1 and P2 are either two negative  
infinite real numbers, or two positive infinite real numbers.") Add;
		static void Add (const gp_Lin & L,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	L(gp_Lin2d)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Lin2d & L,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box2d & B);
		%feature("autodoc", "Args:
	C(gp_Circ)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Circ & C,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	C(gp_Circ)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

P2-P1 can be in [0,2*pi]") Add;
		static void Add (const gp_Circ & C,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	C(gp_Circ2d)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Circ2d & C,const Standard_Real Tol,Bnd_Box2d & B);
		%feature("autodoc", "Args:
	C(gp_Circ2d)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

Adds the circle C, or the arc of the circle C  
limited by the two parameter values P1 and P2,  
to the bounding box B, and then enlarges B by the tolerance value Tol.  
P2-P1 can be in [0,2*pi]") Add;
		static void Add (const gp_Circ2d & C,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box2d & B);
		%feature("autodoc", "Args:
	C(gp_Elips)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Elips & C,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	C(gp_Elips)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

P2-P1 can be in [0,2*pi]") Add;
		static void Add (const gp_Elips & C,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	C(gp_Elips2d)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Elips2d & C,const Standard_Real Tol,Bnd_Box2d & B);
		%feature("autodoc", "Args:
	C(gp_Elips2d)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

Adds the ellipse E, or the arc of the ellipse E  
limited by the two parameter values P1 and P2,  
to the bounding box B, and then enlarges B by the tolerance value Tol.  
P2-P1 can be in [0,2*pi]") Add;
		static void Add (const gp_Elips2d & C,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box2d & B);
		%feature("autodoc", "Args:
	P(gp_Parab)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Parab & P,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	P(gp_Parab2d)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

Adds the arc of the parabola P limited by the two  
parameter values P1 and P2, to the bounding box B, and  
then enlarges B by the tolerance value Tol.  
P1 and P2 may represent infinite values.  
Exceptions  
Standard_Failure if P1 and P2 are either two negative  
infinite real numbers, or two positive infinite real numbers.") Add;
		static void Add (const gp_Parab2d & P,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box2d & B);
		%feature("autodoc", "Args:
	H(gp_Hypr)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Hypr & H,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	H(gp_Hypr2d)
	P1(Standard_Real)
	P2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

Adds the arc of the branch of hyperbola H limited by the  
two parameter values P1 and P2, to the bounding box B,  
and then enlarges B by the tolerance value Tol.  
P1 and P2 may represent infinite values.  
Exceptions  
Standard_Failure if P1 and P2 are either two negative  
infinite real numbers, or two positive infinite real numbers.") Add;
		static void Add (const gp_Hypr2d & H,const Standard_Real P1,const Standard_Real P2,const Standard_Real Tol,Bnd_Box2d & B);
		%feature("autodoc", "Args:
	S(gp_Cylinder)
	UMin(Standard_Real)
	UMax(Standard_Real)
	VMin(Standard_Real)
	VMax(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

UMax -UMin can be in [0,2*pi]") Add;
		static void Add (const gp_Cylinder & S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	S(gp_Cylinder)
	VMin(Standard_Real)
	VMax(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Adds to the bounding box B, the patch of the cylinder S limited  
-   in the v parametric direction, by the two parameter  
  values VMin and VMax  
-   and optionally in the u parametric direction, by the two  
  parameter values UMin and UMax.  
B is then enlarged by the tolerance value Tol.  
VMin and VMax may represent infinite values.  
Exceptions  
Standard_Failure if VMin and VMax are either two  
negative infinite real numbers, or two positive infinite real numbers.") Add;
		static void Add (const gp_Cylinder & S,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	S(gp_Cone)
	UMin(Standard_Real)
	UMax(Standard_Real)
	VMin(Standard_Real)
	VMax(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

UMax-UMin can be in [0,2*pi]") Add;
		static void Add (const gp_Cone & S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	S(gp_Cone)
	VMin(Standard_Real)
	VMax(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Adds to the bounding box B, the patch of the cone S limited  
-   in the v parametric direction, by the two parameter  
  values VMin and VMax  
-   and optionally in the u parametric direction, by the two  
  parameter values UMin and UMax,  
B is then enlarged by the tolerance value Tol.  
VMin and VMax may represent infinite values.  
Exceptions  
Standard_Failure if VMin and VMax are either two  
negative infinite real numbers, or two positive infinite real numbers.") Add;
		static void Add (const gp_Cone & S,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	S(gp_Sphere)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Sphere & S,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	S(gp_Sphere)
	UMin(Standard_Real)
	UMax(Standard_Real)
	VMin(Standard_Real)
	VMax(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Adds to the bounding box B the sphere S, or  
-   the patch of the sphere S, limited in the u parametric  
  direction, by the two parameter values UMin and UMax,  
  and in the v parametric direction, by the two parameter  
  values VMin and VMax.  
B is then enlarged by the tolerance value Tol.  
UMax-UMin can be in [0,2*pi]  
          VMin,VMax can be [-pi/2,pi/2]") Add;
		static void Add (const gp_Sphere & S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	P(gp_Torus)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

No detailed docstring for this function.") Add;
		static void Add (const gp_Torus & P,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	P(gp_Torus)
	UMin(Standard_Real)
	UMax(Standard_Real)
	VMin(Standard_Real)
	VMax(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Adds to the bounding box B  
-   the torus S, or  
-   the patch of the torus S, limited in the u parametric  
  direction, by the two parameter values UMin and UMax,  
  and in the v parametric direction, by the two parameter  
  values VMin and VMax.  
B is then enlarged by the tolerance value Tol.  
UMax-UMin can be in [0,2*pi],  
          VMin,VMax can be [-pi/2,pi/2]") Add;
		static void Add (const gp_Torus & P,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real Tol,Bnd_Box & B);
};


%feature("shadow") BndLib::~BndLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BndLib {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BndLib_Add2dCurve;
class BndLib_Add2dCurve {
	public:
		%feature("autodoc", "Args:
	C(Adaptor2d_Curve2d)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

Adds to the bounding box B the curve C  
 B is then enlarged by the tolerance value Tol.  
Note: depending on the type of curve, one of the following  
representations of the curve C is used to include it in the bounding box B:  
-   an exact representation if C is built from a line, a circle   or a conic curve,  
-   the poles of the curve if C is built from a Bezier curve or   a BSpline curve,  
-   if not, the points of an approximation of the curve C.  
Warning  
C is an adapted curve, that is, an object which is an interface between:  
-   the services provided by a 2D curve from the package Geom2d  
-   and those required of the curve by the computation algorithm.  
 The adapted curve is created in the following way:  
   Handle_Geom2d_Curve mycurve = ...  
;  
   Geom2dAdaptor_Curve C(mycurve);  
The bounding box B is then enlarged by adding it:  
   Bnd_Box2d B;  
// ...  
   Standard_Real Tol = ... ;  
   Add2dCurve::Add ( C, Tol, B );  
Exceptions  
Standard_Failure if the curve is built from:  
-   a Geom_Line, or  
-   a Geom_Parabola, or  
-   a Geom_Hyperbola,  
and P1 and P2 are either two negative infinite real  
numbers, or two positive infinite real numbers.") Add;
		static void Add (const Adaptor2d_Curve2d & C,const Standard_Real Tol,Bnd_Box2d & B);
		%feature("autodoc", "Args:
	C(Adaptor2d_Curve2d)
	U1(Standard_Real)
	U2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box2d)

Returns:
	static void

Adds to the bounding box Bthe arc of the curve C limited by the two parameter  
 values P1 and P2.  
 B is then enlarged by the tolerance value Tol.  
Note: depending on the type of curve, one of the following  
representations of the curve C is used to include it in the bounding box B:  
-   an exact representation if C is built from a line, a circle   or a conic curve,  
-   the poles of the curve if C is built from a Bezier curve or   a BSpline curve,  
-   if not, the points of an approximation of the curve C.  
Warning  
C is an adapted curve, that is, an object which is an interface between:  
-   the services provided by a 2D curve from the package Geom2d  
-   and those required of the curve by the computation algorithm.  
 The adapted curve is created in the following way:  
   Handle_Geom2d_Curve mycurve = ...  
;  
   Geom2dAdaptor_Curve C(mycurve);  
The bounding box B is then enlarged by adding it:  
   Bnd_Box2d B;  
// ...  
   Standard_Real Tol = ... ;  
   Add2dCurve::Add ( C, Tol, B );  
Exceptions  
Standard_Failure if the curve is built from:  
-   a Geom_Line, or  
-   a Geom_Parabola, or  
-   a Geom_Hyperbola,  
and P1 and P2 are either two negative infinite real  
numbers, or two positive infinite real numbers.") Add;
		static void Add (const Adaptor2d_Curve2d & C,const Standard_Real U1,const Standard_Real U2,const Standard_Real Tol,Bnd_Box2d & B);
};


%feature("shadow") BndLib_Add2dCurve::~BndLib_Add2dCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BndLib_Add2dCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BndLib_Add3dCurve;
class BndLib_Add3dCurve {
	public:
		%feature("autodoc", "Args:
	C(Adaptor3d_Curve)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Adds to the bounding box B the curve C  
B is then enlarged by the tolerance value Tol.  
Note: depending on the type of curve, one of the following  
representations of the curve C is used to include it in the bounding box B:  
-   an exact representation if C is built from a line, a circle   or a conic curve,  
-   the poles of the curve if C is built from a Bezier curve or   a BSpline curve,  
  if not, the points of an approximation of the curve C.  
Warning  
C is an adapted curve, that is, an object which is an interface between:  
-   the services provided by a 3D curve from the package   Geom  
-   and those required of the curve by the computation algorithm.  
 The adapted curve is created in the following way:  
   Handle_Geom_Curve mycurve = ... ;  
   GeomAdaptor_Curve C(mycurve);  
The bounding box B is then enlarged by adding it:  
   Bnd_Box B;  
// ...  
   Standard_Real Tol = ... ;  
   Add3dCurve::Add ( C, Tol, B );  
Exceptions  
Standard_Failure if the curve is built from:  
-   a Geom_Line, or  
-   a Geom_Parabola, or  
-   a Geom_Hyperbola,  
and P1 and P2 are either two negative infinite real  
numbers, or two positive infinite real numbers.") Add;
		static void Add (const Adaptor3d_Curve & C,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	C(Adaptor3d_Curve)
	U1(Standard_Real)
	U2(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Adds to the bounding box B the curve C  
the arc of the curve C limited by the two parameter values P1 and P2.  
Note: depending on the type of curve, one of the following  
representations of the curve C is used to include it in the bounding box B:  
-   an exact representation if C is built from a line, a circle   or a conic curve,  
-   the poles of the curve if C is built from a Bezier curve or   a BSpline curve,  
  if not, the points of an approximation of the curve C.  
Warning  
C is an adapted curve, that is, an object which is an interface between:  
-   the services provided by a 3D curve from the package   Geom  
-   and those required of the curve by the computation algorithm.  
 The adapted curve is created in the following way:  
   Handle_Geom_Curve mycurve = ... ;  
   GeomAdaptor_Curve C(mycurve);  
The bounding box B is then enlarged by adding it:  
   Bnd_Box B;  
// ...  
   Standard_Real Tol = ... ;  
   Add3dCurve::Add ( C, Tol, B );  
Exceptions  
Standard_Failure if the curve is built from:  
-   a Geom_Line, or  
-   a Geom_Parabola, or  
-   a Geom_Hyperbola,  
and P1 and P2 are either two negative infinite real  
numbers, or two positive infinite real numbers.") Add;
		static void Add (const Adaptor3d_Curve & C,const Standard_Real U1,const Standard_Real U2,const Standard_Real Tol,Bnd_Box & B);
};


%feature("shadow") BndLib_Add3dCurve::~BndLib_Add3dCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BndLib_Add3dCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BndLib_AddSurface;
class BndLib_AddSurface {
	public:
		%feature("autodoc", "Args:
	S(Adaptor3d_Surface)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Adds to the bounding box B the surface S  
B is then enlarged by the tolerance value Tol.  
Note: depending on the type of curve, one of the following  
representations of the surface S is used to include it in the bounding box B:  
-   an exact representation if S is built from a plane, a  
  cylinder, a cone, a sphere or a torus,  
-   the poles of the surface if S is built from a Bezier  
  surface or a BSpline surface,  
-   the points of an approximation of the surface S in  
  cases other than offset surfaces;  
-   in the case of an offset surface, the basis surface is first  
  included according to the previous rules; then the  
  bounding box is enlarged by the offset value.  
  Warning  
Do not use these functions to add a non-finite surface to  
the bounding box B.  
If UMin, UMax, VMin or VMax is an infinite value B will become WholeSpace.  
S is an adapted surface, that is, an object which is an interface between:  
-   the services provided by a surface from the package Geom  
-   and those required of the surface by the computation algorithm.  
  The adapted surface is created in the following way:  
   Handle_Geom_Surface mysurface = ... ;  
   GeomAdaptor_Surface S(mysurface);  
The bounding box B is then enlarged by adding this surface:  
   Bnd_Box B;  
// ...  
   Standard_Real Tol = ... ;  
   AddSurface::Add ( S, Tol, B );") Add;
		static void Add (const Adaptor3d_Surface & S,const Standard_Real Tol,Bnd_Box & B);
		%feature("autodoc", "Args:
	S(Adaptor3d_Surface)
	UMin(Standard_Real)
	UMax(Standard_Real)
	VMin(Standard_Real)
	VMax(Standard_Real)
	Tol(Standard_Real)
	B(Bnd_Box)

Returns:
	static void

Adds to the bounding box B the surface S  
the patch of the surface S limited in the u parametric  
  direction by the two parameter values UMin, UMax, and  
  in the v parametric direction by the two parameter  
  values VMin, VMax.  
Note: depending on the type of curve, one of the following  
representations of the surface S is used to include it in the bounding box B:  
-   an exact representation if S is built from a plane, a  
  cylinder, a cone, a sphere or a torus,  
-   the poles of the surface if S is built from a Bezier  
  surface or a BSpline surface,  
-   the points of an approximation of the surface S in  
  cases other than offset surfaces;  
-   in the case of an offset surface, the basis surface is first  
  included according to the previous rules; then the  
  bounding box is enlarged by the offset value.  
  Warning  
Do not use these functions to add a non-finite surface to  
the bounding box B.  
If UMin, UMax, VMin or VMax is an infinite value B will become WholeSpace.  
S is an adapted surface, that is, an object which is an interface between:  
-   the services provided by a surface from the package Geom  
-   and those required of the surface by the computation algorithm.  
  The adapted surface is created in the following way:  
   Handle_Geom_Surface mysurface = ... ;  
   GeomAdaptor_Surface S(mysurface);  
The bounding box B is then enlarged by adding this surface:  
   Bnd_Box B;  
// ...  
   Standard_Real Tol = ... ;  
   AddSurface::Add ( S, Tol, B );") Add;
		static void Add (const Adaptor3d_Surface & S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real Tol,Bnd_Box & B);
};


%feature("shadow") BndLib_AddSurface::~BndLib_AddSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BndLib_AddSurface {
	void _kill_pointed() {
		delete $self;
	}
};