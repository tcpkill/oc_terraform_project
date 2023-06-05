Déploiement d'infrastructure avec Terraform

Ce projet permet de déployer une infrastructure complète à l'aide de Terraform. Il vous permet de configurer une instance EC2 avec la dernière version d'Ubuntu Bionic, d'attacher un volume EBS, d'attribuer une adresse IP publique et de créer un groupe de sécurité. 
Il installe également Nginx sur l'instance EC2 et enregistre l'adresse IP publique dans un fichier nommé ip_ec2-projet.txt.

$$_Prérequis : 

Avant de commencer, assurez-vous de disposer des éléments suivants :

    Terraform installé sur votre machine locale
    Des informations d'identification AWS valides avec les autorisations appropriées

$$_Mise en route : 

Suivez les étapes ci-dessous pour utiliser ce projet :

    1 - Clonez ce dépôt sur votre machine locale ou téléchargez les fichiers du projet.

    2 - Accédez au dossier app dans votre terminal.

    3 - Initialisez la configuration Terraform en exécutant la commande suivante :


	terraform init

Examinez et personnalisez les variables dans main.tf ainsi que les fichiers de module situés dans le dossier modules, en fonction de vos besoins spécifiques.

Pour déployer l'infrastructure, exécutez la commande suivante :

	terraform apply

Cela créera l'instance EC2, le volume EBS, l'adresse IP publique et le groupe de sécurité correspondants.

Une fois le déploiement terminé, Nginx sera installé sur l'instance EC2, et l'adresse IP publique sera enregistrée dans le fichier ip_ec2-projet.txt.

Pour supprimer l'infrastructure et toutes les ressources associées, exécutez la commande suivante :

	terraform destroy

$$_Personnalisation : 

Vous pouvez personnaliser le déploiement en ajustant les variables suivantes dans le fichier main.tf :

    *region : La région AWS dans laquelle l'infrastructure sera déployée.
    *ami : L'ID de l'AMI Ubuntu Bionic. Modifiez cette valeur si vous souhaitez utiliser une version différente.
    *instance_type : Le type d'instance EC2 à provisionner.


$$_Description du projet : 

Le projet "Infrastructure Deployment with Terraform" fournit une solution complète pour le déploiement d'une infrastructure complète à l'aide de Terraform. Il automatise le provisionnement d'une instance EC2 avec Ubuntu Bionic, l'attachement d'un volume EBS, l'attribution d'une IP publique et la création d'un groupe de sécurité. En outre, il installe Nginx sur l'instance EC2 et enregistre l'IP publique dans un fichier.

Ce projet offre une approche organisée et modulaire du déploiement de l'infrastructure, en tirant parti de la puissance de la configuration déclarative de Terraform. En utilisant les principes de l'infrastructure en tant que code, il permet aux utilisateurs de créer, gérer et répliquer facilement leur infrastructure sur AWS.
Public cible

Le projet est bénéfique pour les personnes ou groupes suivants :

*Développeurs : Les développeurs qui ont besoin de créer rapidement une infrastructure pour leurs applications peuvent tirer parti de ce projet pour automatiser le processus de déploiement. Ils peuvent facilement personnaliser le type d'instance, la taille du volume, les règles du groupe de sécurité et d'autres paramètres en fonction des exigences spécifiques de leur application.

*Ingénieurs DevOps : Les ingénieurs DevOps responsables de la gestion des déploiements d'infrastructure peuvent utiliser ce projet pour automatiser le processus de déploiement.