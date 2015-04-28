
linear_extrude (height=7)
	import (file="all.dxf", layer="bar-for-endstop-0-5", $fn=100);

translate([0,0,4.99])
linear_extrude (height=2)
		import (file="all.dxf", layer="bar-for-endstop-5-8", $fn=100);
translate([0,0,6.98])
	linear_extrude (height=20)
		import (file="all.dxf", layer="bar-for-endstop-8-15", $fn=100);


