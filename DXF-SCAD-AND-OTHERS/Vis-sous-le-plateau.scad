/*
Projet ReprapJeanne

Sorte de rondelle pour que les têtes de vis
sous le plateau ne touchent pas directement le sol

github: https://github.com/gnieark/reprapJeanne
wiki https://mail.jeannedhack.org/wicked/display.php?page=reprap_geante

By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   

License GNU-GPL V3

*/
difference(){
	cylinder(r=10,h=7,$fn=100);
	union(){
		//nuts hole
		translate([0,0,-0.1])
			cylinder(r=4,h=4,$fn=100);
		translate([0,0,-0.1])
			cylinder(r=1.5,h=15,$fn=100);

	}
}
