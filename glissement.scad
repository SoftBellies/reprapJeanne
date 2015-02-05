include <../MCAD/bearing.scad>;

/*
Roulements à billes 623 ZZ (0.80€)
Diamètre intérieur : 3mm
Diamètre extérieur : 10 mm
Largeur : 4 mm
*/

$fn=200;

/*
color ("seagreen") translate([0,0,-50])
linear_extrude (height=2000)  
	import (file="all.dxf", layer="profil T", $fn=100);
*/

difference(){
	union(){	
		linear_extrude (height=10)
			import (file="all.dxf", layer="profil-pour-3d", $fn=200);
		translate([0,0,-9])
			linear_extrude (height=28)
				import (file="all.dxf", layer="profil-pour-3d-2", $fn=100);
		//boursuflures pour caler les roulements
		cones();
		translate([4,25.5,18.99]) cube([12,3,9]);
		translate([4,25.5,-17.99]) cube([12,3,9]);

	}
	union(){
		screws();
		translate([7,25.498,18.98]) cube([6,3.2,6]);
		translate([7,25.498,-14.97]) cube([6,3.2,6]);
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
	translate([12.01,25,15]) rotate([90,0,90]) unCone();
	translate([12.01,25,-5]) rotate([90,0,90]) unCone();
	translate([8,25,15]) rotate([270,0,90]) unCone();
	translate([8,25,-5]) rotate([270,0,90]) unCone();
	translate([-0.01,13.3725,5]) rotate([270,0,90]) unCone();
	translate([15.99,13.3725,5]) rotate([270,0,90]) unCone();
	translate([4.1225,-0.01,5]) rotate([90,0,0]) unCone();
	translate([15.8775,-0.01,5]) rotate([90,0,0]) unCone();
	translate([4.1225,4.01,5]) rotate([270,0,0]) unCone();
	translate([15.8775,4.01,5]) rotate([270,0,0]) unCone();
}

module unCone(){
	cylinder (r1=2, r2=3, h=1, $fn=100);
 	translate([0,0,0.999]) cylinder (r=3, h=1, $fn=100);
}

//positionnement des roulements à bille
/*
bearing(pos=[8, 25,-5], angle=[90,00,90], model=623);
bearing(pos=[8, 25,15], angle=[90,00,90], model=623);
bearing(pos=[0, 13.3725,5], angle=[90,00,90], model=623);
bearing(pos=[16, 13.3725,5], angle=[90,00,90], model=623);
bearing(pos=[4, 4.1862,5], angle=[90,0,0], model=623);
bearing(pos=[16.5, 4.1862,5], angle=[90,0,0], model=623);

*/


