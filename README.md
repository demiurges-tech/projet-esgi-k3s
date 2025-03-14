## Dokcerfile
le fichier contient les informations pour construire l'image de paymybuddy. 
On se base sur une image aws puis on vient exécuter le logiciel java.

## Docker-compose
Au lieu de build une image pour la bdd on la configure dans le conpose et on vient aussi build l'image de l'application.
Ensuite on relier les deux en appelant le port de la bdd.

