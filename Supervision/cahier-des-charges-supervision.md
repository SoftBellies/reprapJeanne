reprapJeanne
Cahier des charges du système de supervision / sécurisation de l'imprimante
============
/!\ En cours de rédaction

##Problématique / objectifs
Vu la taille de l'imprimante, elle sera utilisée des impressions qui pourraient prendre plusieurs jours. Il n'y aura donc pas de surveillance humaine en permanence lors d'une impression.

Il faut donc:
+ Un système qui coupe l'alimentation de la reprap lors de détection de fumée et/ou détection d'une point anormalement chaud
+ Un système qui met en pause l'imprimante (et coupe la cartouche du hot end) lorsque le filament est terminé et/ou s'est bloqué

+ Envoi d'un en-mail avec photo lors d'un des évènements sités au dessus.


![Alt text](https://github.com/gnieark/reprapJeanne/blob/master/Supervision/Supervision.png?raw=true "Schema")

##Pistes
+ from scratch (arduino et / ou RPY, webcam)
+ Utilisation - amélioration d'octoprint http://reprap.org/wiki/OctoPrint
