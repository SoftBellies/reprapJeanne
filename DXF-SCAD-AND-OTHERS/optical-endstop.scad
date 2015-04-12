/*
Projet ReprapJeanne

Représentation des fins de courses optiques
qui seront utilisées.

github: https://github.com/gnieark/reprapJeanne
wiki https://mail.jeannedhack.org/wicked/display.php?page=reprap_geante

By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   

License GNU-GPL V3

*/
difference(){
	union(){
		linear_extrude(6.4)
			import (file="optical-end-stop.dxf", layer="fourche", $fn=100);
		translate([0,0,-1.8]) linear_extrude(10)
			import (file="optical-end-stop.dxf", layer="PCB", $fn=100);
	}
	union(){
	//screw holes
		translate([2.8,5,3.2])rotate([90,0,0]) cylinder(r=1.5,h=10,$fn=50);
		translate([21.8,5,3.2])rotate([90,0,0]) cylinder(r=1.5,h=10,$fn=50);
	}

}
