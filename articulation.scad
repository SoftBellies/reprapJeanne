$fn=200;
difference(){
	union(){
		translate([0,-2.9,0]) rotate([90,0,0]) #cylinder (r=4, h=8.2);
		translate([5,-7,-7])cylinder (r=4, h=14);
		translate([-4,-11,-7]) cube([8,8,14]);
	}
	union(){
		translate([0,1,0])rotate([90,0,0]) cylinder (r=2, h=16);
		translate([5,-7,-8])cylinder (r=2, h=16);
	}
}




