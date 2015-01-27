include <./MCAD/bearing.scad>;

/*
Roulements à billes 623 ZZ (0.80€)
Diamètre intérieur : 3mm
Diamètre extérieur : 10 mm
Largeur : 4 mm
*/

$fn=200;

//color ("seagreen")
//linear_extrude (height=2000)  
//	import (file="T-carre.dxf", layer="profil T", $fn=100);

difference(){	
linear_extrude (height=10)

	import (file="T-carre.dxf", layer="profil-pour-3d", $fn=100);
	screws();
}
difference(){
	cones();
	screws();
}
//Les trous pour les vis:
module screws(){
	translate([4.1225,7.1862,5]) rotate([90,0,0]) cylinder (r=1.5, h=14);
	translate([15.8775,7.1862,5]) rotate([90,0,0]) cylinder (r=1.5, h=14);

translate([-5.1,13.3725,5]) rotate([90,0,90]) cylinder (r=1.5, h=12);
translate([13.2775,13.3725,5]) rotate([90,0,90]) cylinder (r=1.5, h=12);
translate([-5.1,25,5]) rotate([90,0,90]) cylinder (r=1.5, h=14);
translate([12.2775,25,5]) rotate([90,0,90]) cylinder (r=1.5, h=14);

translate([26,25,5]) rotate([90,0,90]) cylinder (r=4, h=20);
translate([26,13.3725,5]) rotate([90,0,90]) cylinder (r=4, h=20);
translate([-26,25,5]) rotate([90,0,90]) cylinder (r=4, h=20);
translate([-26,13.3725,5]) rotate([90,0,90]) cylinder (r=4, h=20);

translate([4.1225,-6,5])rotate([90,0,0]) cylinder (r=4, h=10);
translate([15.8775,-6,5])rotate([90,0,0]) cylinder (r=4, h=10);

translate([-25.7,38.05,5]) rotate([90,0,90]) #cylinder (r=1.5, h=21);
translate([24.5,38.05,5]) rotate([90,0,90]) #cylinder (r=1.5, h=21.5);
translate([6,37.9,3]) cube([8,4.2,4]);
}



module cones(){
 translate([4.01,13.3725,5]) rotate([90,0,90]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);
	translate([20.01,13.3725,5]) rotate([90,0,90]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);
 translate([4.01,25,5]) rotate([90,0,90]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);
	translate([20.01,25,5]) rotate([90,0,90]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);

translate([-0.01,13.3725,5]) rotate([270,0,90]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);
translate([-0.01,25,5]) rotate([270,0,90]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);
translate([15.99,13.3725,5]) rotate([270,0,90]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);
translate([15.99,25,5]) rotate([270,0,90]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);


translate([4.1225,-0.01,5]) rotate([90,0,0]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);
translate([15.8775,-0.01,5]) rotate([90,0,0]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);

translate([4.1225,4.01,5]) rotate([270,0,0]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);
translate([15.8775,4.01,5]) rotate([270,0,0]) cylinder (r1=1.5, r2=2.5, h=1, $fn=20);



}



//positionnement des roulements à bille
/*
bearing(pos=[4, -16,80], angle=[90,0,0], model=623);
bearing(pos=[16.5, -16,80], angle=[90,0,0], model=623);
bearing(pos=[0, -5,80], angle=[90,00,90], model=623);
bearing(pos=[16, -5,80], angle=[90,00,90], model=623);
bearing(pos=[0, 6,80], angle=[90,00,90], model=623);
bearing(pos=[16, 6,80], angle=[90,00,90], model=623);

*/




