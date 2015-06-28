/*
Projet ReprapJeanne
Fixation des endstop optiques sur l'axe profil T
github: https://github.com/gnieark/reprapJeanne
wiki https://mail.jeannedhack.org/wicked/display.php?page=reprap_geante
By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   
License GNU-GPL V3

fixation des end-stop
*/

difference(){
	linear_extrude (height=6.5)
		import (file="all.dxf", layer="mount-endstop", $fn=100);
	 union(){
		translate([0.5,-3,3.25]) rotate([270,0,0]) cylinder(r=1.5,h=3,$fn=50);
		translate([0.5+19,-3,3.5]) rotate([270,0,0]) cylinder(r=1.5,h=10,$fn=50);

		translate([-5,15,3.5]) rotate([270,0,0]) cylinder(r=1.5,h=10,$fn=50);
	}
}