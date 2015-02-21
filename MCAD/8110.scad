difference(){
	translate([0,0,0.01])cylinder(r=2.4,h=12,$fn=100);
	union(){
		cylinder(r=1.8,h=5,$fn=50);
		difference(){
			translate([0,0,4.99]) cylinder(r=1.6,h=5,$fn=135);
			translate([0.45,-4,0]) cube([8,8,10]);
			
		}
	}
}