## Dockerfile
le fichier contient les informations pour construire l'image de paymybuddy. 
On se base sur une image aws puis on vient exécuter le logiciel java.
    projet-esgi-k3s

[/screenshot_14032025_124745.jpg](https://github.com/demiurges-tech/projet-esgi-k3s/blob/main/screenshot_14032025_124745.jpg)

## Docker-compose
Au lieu de build une image pour la bdd on la configure dans le conpose et on vient aussi build l'image de l'application.
Ensuite on relier les deux en appelant le port de la bdd.

une fois éxécuter on on voit accede à l'application

[/screenshot_14032025_133832.jpg](https://github.com/demiurges-tech/projet-esgi-k3s/blob/main/screenshot_14032025_133832.jpg)


## Kubctl

### backend-deployment.yaml 
Ici on configure les pods qui seront déployer, avec leur varibales, et les ports éxposés

### backend-service.yaml 
On y configure le service pour exposer l'application backend, permettant ainsi à d'autres composants du cluster ou à l'extérieur du cluster d'y accéder.

### mysql-configmap.yaml
Ce fichier cContient des données de configuration non sensibles sous forme de ConfigMap pour la base de données MySQL.

### mysql-deployment.yaml
On y définit le déploiement pour le conteneur MySQL.

### mysql-init-configmap.yaml
Permet d'exécuter le service mysql

### mysql-pvc.yaml
Définit un PersistentVolumeClaim (PVC)

### mysql-secret.yaml
On y stocke les données sensibles

### mysql-service.yaml
Définit un Service pour exposer MySQL au sein du cluster.

