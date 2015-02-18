/*
Projet ReprapJeanne
End stop 

github: https://github.com/gnieark/reprapJeanne
wiki https://mail.jeannedhack.org/wicked/display.php?page=reprap_geante

By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   

License GNU-GPL V3

références:
SS-5GL-F
0717H3
marque "OMRON"
*/

module endStop(){
	difference(){
		union(){
			linear_extrude(6.5)
			polygon (points=[
			[0,0],[20,0],[20,10],[10,10],[9,10.5],[0,10.5]]);

			translate([1.5,-3.99,1.5]) cube([0.5,4,3.5]);
			translate([10,-3.99,1.5]) cube([0.5,4,3.5]);
			translate([18.5,-3.99,1.5]) cube([0.5,4,3.5]);
		
			translate ([7,10.5,1.5]) cylinder(r=1.25,h=3.5,$fn=50);
			translate ([0,10.5,1.5]) rotate([0,0,10]) cube([18,0.3,4]);
		}
		union(){
			translate ([6,2.5,-0.01]) cylinder(r=1.25,h=15,$fn=50);
			translate ([14.5,2.5,-0.01]) cylinder(r=1.25,h=15,$fn=50);
			translate([0,-2.3,3.25]) rotate([0,90,0])  cylinder(r=0.75,h=20,$fn=50);
		}
	}
}
endStop();