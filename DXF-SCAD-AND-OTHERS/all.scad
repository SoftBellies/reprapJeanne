/*
Projet ReprapJeanne
Modélisation de l'ensemble de l'imprimante

(dessin non terminé)

github: https://github.com/gnieark/reprapJeanne

By Gnieark https://blog-du-grouik.tinad.fr
& TranKILLoman   
License GNU-GPL V3
*/

//structure plateaux et axes
linear_extrude (height=5)
			  import (file="plateau-axes.dxf", layer="plateau", $fn=100);
linear_extrude (height=2000)
			  import (file="plateau-axes.dxf", layer="axes", $fn=100);
translate([0,0,2000])
	linear_extrude (height=5)
			  import (file="plateau-axes.dxf", layer="plateau", $fn=100);


//pied, haut, glissement
use <bas-de-l-axe-plus-petit.scad>;

translate([723,4.4,5]) 
	rotate ([0,0,60])
		color([1,0,0])
		pied_de_l_axe_petit();

translate([385,626,5]) 
	rotate ([0,0,180])
		color([1,0,0])
		pied_de_l_axe_petit();

translate([17,21,5]) 
	rotate ([0,0,-60])
		color([1,0,0])
		pied_de_l_axe_petit();

use <top-axis.scad>;
translate([723,4.4,1955]) 
	rotate ([0,0,60])
		color([1,0,0])
		topAxis();

translate([385,626,1955]) 
	rotate ([0,0,180])
		color([1,0,0])
		topAxis();

translate([17,21,1955]) 
	rotate ([0,0,-60])
		color([1,0,0])
		topAxis();

use <glissement.scad>

translate([723,4.4,1000]) 
	rotate ([0,0,60])
		color([1,0,0])
		glissement_all();

translate([385,626,1000]) 
	rotate ([0,0,180])
		color([1,0,0])
		glissement_all();

translate([17,21,1000]) 
	rotate ([0,0,-60])
		color([1,0,0])
		glissement_all();

//plate forme
use <platform.scad>
translate([375,216,500]) color([1,0,0]) platform();
