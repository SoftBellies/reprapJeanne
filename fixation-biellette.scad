$fn=200;
difference(){
linear_extrude (height=10)
	import (file="fixation-Biellette.dxf", layer="0");
	union(){
		translate([-12.5,1,5]) rotate([90,0,90]) cylinder(r=1.5,h=25);
	}
}