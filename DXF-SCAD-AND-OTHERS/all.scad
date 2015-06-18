//structure plateaux et axes
linear_extrude (height=5)
			  import (file="plateau-axes.dxf", layer="plateau", $fn=100);
linear_extrude (height=2000)
			  import (file="plateau-axes.dxf", layer="axes", $fn=100);
translate([0,0,2000])
	linear_extrude (height=5)
			  import (file="plateau-axes.dxf", layer="plateau", $fn=100);

use <bas-de-l-axe-plus-petit.scad>;

translate([723,4.4,5]) 
	rotate ([0,0,60])
		color([1,0,0])
		pied_de_l_axe_petit();

translate([385,626,5]) 
	rotate ([0,0,180])
		color([1,0,0])
		pied_de_l_axe_petit();

