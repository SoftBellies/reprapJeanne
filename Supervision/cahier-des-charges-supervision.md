reprapJeanne
Cahier des charges du système de supervision / sécurisation de l'imprimante
============


##Problématique / objectifs
Vu la taille de l'imprimante, elle sera utilisée des impressions qui pourraient prendre plusieurs jours. Il n'y aura donc pas de surveillance humaine en permanence lors d'une impression.

Il faut donc:
+ Un système qui coupe l'alimentation de la reprap lors de détection d'incendie (choix du type de détecteur:  thermique / thermovélocimétrique/ de flammes / de fumées a définir)
+ Une deuxième thermistance sur le hot end. Coupure de l'alimentation si t° > 250, ou si trop d'écard de mesure avec la thermistance normale de la reprap.
+ Un système qui met en pause l'imprimante (et coupe la cartouche du hot end) lorsque le filament est terminé et/ou s'est bloqué

+ Envoi d'un en-mail avec photo lors d'un des évènements sités au dessus.


![Alt text](https://github.com/gnieark/reprapJeanne/blob/master/Supervision/Supervision.png?raw=true "Schema")

##Pistes
+ from scratch (arduino et / ou RPY, webcam)
+ Utilisation - amélioration d'octoprint http://reprap.org/wiki/OctoPrint

Zigazou est parti sur l'idée de refaire une interface web complete sur RPY, qui pilote totalement la reprap (on peut lui charger le GCODE)

##Capteurs
###Détection incendie
type à définir
###Thermistance
ça c'est simple
###Détection de problème sur le filament
faire en sorte que le filament entraine une roue codeuse qui passe dans une fourche optique. Si pendant (5 secondes?) la fourche optique ne change pas détat, on peut considérer que soit:
+ la bobine est finie
+ le filament est bloqué.

=> Mise en pause de l'impression et arret de la chauffe. Celui qui changera la bobine devra ensuite appuyer sur le bouton "play". 