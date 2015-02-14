/*
Projet ReprapJeanne

Sysème de fixation du moteur en haut d'un axe. "T carré 20x20 alu"

github: https://github.com/gnieark/reprapJeanne
wiki https://mail.jeannedhack.org/wicked/display.php?page=reprap_geante

By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   

License GNU-GPL V3

*/

difference(){
	union(){
	linear_extrude(42.551)
		polygon (points=[
		[0,0],[11.75,0],[11.75,18.5],[21,18.5],[21,30.25],[-2.25,30.25],[-2.25,65.385],[0.75,65.385],[-7.25,65.385],[-7.25,22.585],[-9.25,22.585],[-9.25,18.5],[0,18.5]
	]);

		translate([0,0,42.55])
			linear_extrude(5)
		polygon (points=[
		[0,0],[11.75,0],[21,18.5],[21,30.25],[-2.25,30.25],[-2.25,65.385],[0.75,65.385],[0.75,73.385],[-7.25,73.385],[-7.25,22.585],[-9.25,22.585],[-9.25,18.5]
	]);

	}
	union(){
		//emplacement du profil T
		translate([0,0,-0.01])
			linear_extrude(29.775)
				polygon (points=[
		[5,5],[6.75,5],[6.75,23.5],[16,23.5],[16,25.25],[-4.25,25.25],[-4.25,23.5],[5,23.5]
	]);

		//les 3 vis fixation du moteur
		translate([-7.4,28.485,36.775]) rotate([0,90,0]) cylinder(h=6,r=1.5,$fn=50);
		translate([-2.26,28.485,36.775]) rotate([0,90,0]) cylinder(h=30,r=4,$fn=50);
		translate([-7.4,59.485,36.775]) rotate([0,90,0]) cylinder(h=6,r=1.5,$fn=50);
		translate([-7.4,59.485,5.65]) rotate([0,90,0]) cylinder(h=6,r=1.5,$fn=50);
		//trou carré pour le moteur
		translate([-7.4,31.485,8.775]) cube([6,25,25]);
		//vis plus larges pour plaque au dessus
		translate([-2.8563,13.4208,42.54]) cylinder(h=6,r=2,$fn=50);
		translate([14.6063,13.4208,42.54]) cylinder(h=6,r=2,$fn=50);
		translate([-3.25,69.358,42.54]) cylinder(h=6,r=2,$fn=50);
	}
}