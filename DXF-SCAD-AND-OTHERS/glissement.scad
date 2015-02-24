/*
Projet ReprapJeanne

Glissement le long des axes. "T carré 20x20 alu"

github: https://github.com/gnieark/reprapJeanne
wiki https://mail.jeannedhack.org/wicked/display.php?page=reprap_geante

By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   

License GNU-GPL V3

*/

include <MCAD/bearing.scad>;

/*
Roulements à billes 623 ZZ (0.80€)
Diamètre intérieur : 3mm
Diamètre extérieur : 10 mm
Largeur : 4 mm

Le système de glissemen,t est divisé en deux pièces
afin de faciliter son impression.

*/

$fn=200;

glissement();
module glissement(){
  //Pièce principale
  difference(){
	  union(){	
		  linear_extrude (height=10)
			  import (file="all.dxf", layer="profil-pour-3d", $fn=100);
		  cones();
	  }
	  union(){
		  screws();
		  //trou pour vis fixation des deux pièces ensembles:
		  translate([10,30,5]) rotate([-90,0,0]) cylinder(r=1.5,h=6);
	  }
  }

  //Piece pour les deux roulements verticaux
  difference(){
	  union(){
		  translate([0,0,-9])
			  linear_extrude (height=28)
				  import (file="all.dxf", layer="profil-pour-3d-2", $fn=100);
		  translate([12.01,25,15]) rotate([90,0,90]) unCone();
		  translate([12.01,25,-5]) rotate([90,0,90]) unCone();
		  translate([8,25,15]) rotate([270,0,90]) unCone();
		  translate([8,25,-5]) rotate([270,0,90]) unCone();

		  //encoches pour fixer les courroies	
		  translate([2,31,17.99]) cube([16,4,6]);
		  translate([2,31,-14.99]) cube([16,4,6]);
	  }
	  union(){
		  
		  translate([-5.1,25,15])
			  rotate([90,0,90])
				  cylinder (r=1.5, h=14);
		  translate([12,25,15])
			  rotate([90,0,90])
				  cylinder (r=1.5, h=14);
		  translate([-5.1,25,-5])
			  rotate([90,0,90])
				  cylinder (r=1.5, h=14);
		  translate([12,25,-5])
			  rotate([90,0,90])
				  cylinder (r=1.5, h=14);

		  //encoches pour fixer les courroies	
		  translate([4,30.99,18.98]) cube([12,4.02,3]);
		  translate([4,30.99,-12]) cube([12,4.02,3]);
	  

		  //encoche pour emboiter les deux pièces
		  translate([1.99,32.99,0]) cube([16.02,2.02,10]);
		  //trou pour vis fixation des deux pièces ensembles:
		  translate([10,30,5]) rotate([-90,0,0]) cylinder(r=1.5,h=6);
	  }
  }
}

module screws(){
	translate([4.1225,7.1862,5])
		rotate([90,0,0]) 
			cylinder (r=1.5, h=14);
	translate([15.8775,7.1862,5])
		rotate([90,0,0])
			cylinder (r=1.5, h=14);
	translate([-5.1,13.3725,5])
		rotate([90,0,90])
			cylinder (r=1.5, h=12);
	translate([13.2775,13.3725,5])
		rotate([90,0,90])
			cylinder (r=1.5, h=12);
	translate([26,13.3725,5])
		rotate([90,0,90])
			cylinder (r=4, h=20);
	translate([-26,13.3725,5])
		rotate([90,0,90])
			cylinder (r=4, h=20);
	translate([4.1225,-6,5])
		rotate([90,0,0])
			cylinder (r=4, h=10);
	translate([15.8775,-6,5])
		rotate([90,0,0])
			cylinder (r=4, h=10);
	translate([-25.7,38.05,5])
		rotate([90,0,90])
			cylinder (r=1.5, h=21);
	translate([24.5,38.05,5])
		rotate([90,0,90])
			cylinder (r=1.5, h=21.5);

}
module cones(){
	translate([4.01,13.3725,5]) rotate([90,0,90]) unCone();
	translate([20.01,13.3725,5]) rotate([90,0,90]) unCone();
	translate([-0.01,13.3725,5]) rotate([270,0,90]) unCone();
	translate([15.99,13.3725,5]) rotate([270,0,90]) unCone();
	translate([4.1225,-0.01,5]) rotate([90,0,0]) unCone();
	translate([15.8775,-0.01,5]) rotate([90,0,0]) unCone();
	translate([4.1225,4.01,5]) rotate([270,0,0]) unCone();
	translate([15.8775,4.01,5]) rotate([270,0,0]) unCone();
}

module unCone(){
	cylinder (r1=2, r2=3, h=1, $fn=50);
 	translate([0,0,0.999]) cylinder (r=3, h=1, $fn=100);
}


