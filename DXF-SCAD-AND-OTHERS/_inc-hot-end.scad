//TranKILLoman's extruder

/*
*L'extrudeur de tranKILLoman qui servira à la reprap
* et qui a des dimmensions bizares
*/

$fn=100;

module extrudeur(){
	translate([0,0,15.98])
		cylinder(r=6.43, h=40);
	translate([0,0,55.97])
		cylinder(r=4.75, h=5);
	translate([0,0,60.97])
		cylinder(r=6.43, h=5);
	translate([-15,-8.5,4.99])	cube([30,17,11]);
	cylinder(r1=1,r2=6.43, h=5);
}
extrudeur();