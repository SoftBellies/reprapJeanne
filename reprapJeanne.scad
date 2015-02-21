use <_inc-endstop.scad>;
translate([16.1,13,60])
	rotate([90,180,90])
		endStop();

include <MCAD/stepper.scad>;
translate([-3.24,38.985,71.275])
	rotate([0,270,0]) 
		motor(Nema17,NemaMedium,	dualAxis=true);

use <glissement.scad>;
glissement();

use <top-axis.scad>;
translate([4.1,-5,50]) topAxis();



//Profil T

color ("seagreen") translate([0,0,-10])
linear_extrude (height=90)  
	import (file="all.dxf", layer="profil T", $fn=100);


//positionnement des roulements à bille
bearing(pos=[8, 25,-5], angle=[90,00,90], model=623);
bearing(pos=[8, 25,15], angle=[90,00,90], model=623);
bearing(pos=[0, 13.3725,5], angle=[90,00,90], model=623);
bearing(pos=[16, 13.3725,5], angle=[90,00,90], model=623);
bearing(pos=[4, 4.1862,5], angle=[90,0,0], model=623);
bearing(pos=[16.5, 4.1862,5], angle=[90,0,0], model=623);



