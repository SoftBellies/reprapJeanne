/*
Projet ReprapJeanne
Fixation des endstop optiques sur l'axe profil T
github: https://github.com/gnieark/reprapJeanne
wiki https://mail.jeannedhack.org/wicked/display.php?page=reprap_geante
By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   
License GNU-GPL V3
*/


difference(){
	cube([24.6,6.5,2]);
	union(){
		translate([2.8,3.25,-0.1]) cylinder(r=1.5,h=3,$fn=50);
		translate([2.8+19,3.25,-0.1]) cylinder(r=1.5,h=3,$fn=50);
	}
}
translate([9.65,0,1.99]) cube([2,6.5,15]);
translate([13.15,0,1.99]) cube([2,6.5,15]);
