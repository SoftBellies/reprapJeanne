
linear_extrude (height=9)
	import (file="all.dxf", layer="bar-for-endstop-0-9", $fn=100);

translate([0,0,8.99])
linear_extrude (height=8)
		import (file="all.dxf", layer="bar-for-endstop-9-15", $fn=100);
