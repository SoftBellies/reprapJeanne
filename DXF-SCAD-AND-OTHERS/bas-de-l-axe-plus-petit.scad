/*
Projet ReprapJeanne

Fixation basse des axes de l'imprimante.
Version plus petite (moins long à imprimer)

github: https://github.com/gnieark/reprapJeanne
wiki https://mail.jeannedhack.org/wicked/display.php?page=reprap_geante

By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   

License GNU-GPL V3
*/

linear_extrude (height=4.01)
	import (file="all.dxf", layer="foot-profil-0-4", $fn=100);

difference(){
	union(){
		translate([0,0,4])
			linear_extrude (height=23)
				import (file="all.dxf", layer="foot-profil-4-40", $fn=100);
		translate([13.5,43,16])
			rotate([0,90,0])
				unCone();
		translate([6.5,43,16])
			rotate([180,90,0])
				unCone();
	}
	union(){
		translate([0,43,16])
			rotate([90,0,90])
				cylinder(r=4,$fn=50, h=20);
		difference(){
			translate([-10,43,16])rotate([90,0,90]) cylinder(r=20,h=40,$fn=50);
			union(){
				translate([-11,43,16]) rotate([90,0,90]) #cylinder(r=11.1,h=42,$fn=100);
				translate([-11,13,0]) cube([42,30,30]);
				translate([-11,40,0]) cube([42,30,16]);
			}
		}
	}
}

module unCone(){
	cylinder (r1=5, r2=6, h=1, $fn=50);
 	translate([0,0,0.999]) cylinder (r=8, h=1, $fn=100);
}