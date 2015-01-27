
difference(){
	linear_extrude (height=5)
	import (file="platform.dxf", layer="0", $fn=100);
	union(){
	translate([6.0656,44.5,2.5])
		rotate([90,0,30])
			cylinder(r=1.5, h=72 ,$fn=100);
	translate([-6.0656,44.5,2.5])
		rotate([90,0,-30])
			cylinder(r=1.5, h=72 ,$fn=100);
	translate([-36.4,-28.25,2.5])
		rotate([90,0,90])
			cylinder(r=1.5, h=72 ,$fn=100);
	}
}