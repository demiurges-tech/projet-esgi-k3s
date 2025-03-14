# Projet PayMyBuddy

Ce projet contient les fichiers nécessaires pour déployer l'application PayMyBuddy en utilisant Docker et Kubernetes.

## Structure du projet

```
paymybuddy/
├── Dockerfile
├── docker-compose.yml
├── paymybuddy.jar (à fournir)
├── initdb/
│   └── create.sql
├── kubernetes/
│   ├── backend-deployment.yaml
│   ├── backend-service.yaml
│   ├── configmap.yaml
│   ├── mysql-deployment.yaml
│   ├── mysql-pvc.yaml
│   ├── mysql-service.yaml
│   └── secret.yaml
├── deploy.sh
└── README.md
```

## Prérequis

- Docker
- Docker Compose
- Minikube (optionnel, pour le déploiement Kubernetes)
- kubectl (optionnel, pour le déploiement Kubernetes)

## Instructions de déploiement

1. Placez le fichier JAR de l'application dans le répertoire racine du projet sous le nom `paymybuddy.jar`.
2. Assurez-vous que le fichier `create.sql` contient le schéma de base de données nécessaire.
3. Rendez le script de déploiement exécutable:
   ```bash
   chmod +x deploy.sh
   ```
4. Exécutez le script de déploiement:
   ```bash
   ./deploy.sh
   ```

## Déploiement Docker Compose

Le script déploiera automatiquement l'application avec Docker Compose. Vous pouvez accéder à l'application à l'adresse http://localhost:8080.

## Déploiement Kubernetes

Si Minikube est installé, le script déploiera également l'application sur Kubernetes. L'URL d'accès à l'application sera affichée à la fin du déploiement.

## Nettoyage

- Pour arrêter les conteneurs Docker Compose:
  ```bash
  docker-compose down
  ```

- Pour supprimer les ressources Kubernetes:
  ```bash
  kubectl delete namespace paymybuddy
  ```
