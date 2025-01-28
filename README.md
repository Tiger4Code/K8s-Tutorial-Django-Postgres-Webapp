# Django Web Application with PostgreSQL on Kubernetes

This project demonstrates how to deploy a Django web application with a PostgreSQL database on a Kubernetes cluster using Minikube. It covers the basics of Kubernetes components and the necessary configurations for deploying and managing web apps and databases on Kubernetes.

## Table of Contents
- [Project Overview](#project-overview)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Kubernetes Configuration Files](#kubernetes-configuration-files)

## Project Overview
This project includes the following components:
- **Django Web Application**: A simple web application built using Django.
- **PostgreSQL Database**: A PostgreSQL database to store the application data.
- **Kubernetes Deployment**: The application and database are deployed on Minikube using Kubernetes resources such as Pods, Services, ConfigMaps, Secrets, and Persistent Volumes.

## Prerequisites
To follow along with this tutorial, you will need the following:
- **Minikube**: A tool for running Kubernetes clusters locally.
- **kubectl**: The command-line tool to interact with Kubernetes clusters.
- **Docker**: To build and push container images.
- **A GitHub account** (optional) to store your code and configurations.

## Setup Instructions

1. **Clone the repository**:

   ```bash
   git clone <your-repository-url>
   cd <your-project-directory>

2. **Start Minikube**:

   ```bash
   minikube start


### 3. **Apply Kubernetes configuration files**:

Apply the PostgreSQL-related YAML files first:

    ```bash
    kubectl apply -f postgres-secret.yaml
    kubectl apply -f postgres-config-map.yaml
    kubectl apply -f postgres-pvc.yaml
    kubectl apply -f postgres.yaml

To deploy the Django app and PostgreSQL database on Minikube:

1. Apply the configuration files in the order listed above.
2. Connect to the PostgreSQL pod and create the necessary database:

   ```bash
   kubectl exec -it postgres-deployment-<pod-name> -- psql -U <postgres-username>


Then run the SQL commands:

    ```sql
    CREATE DATABASE ktutorial_db;
    GRANT ALL PRIVILEGES ON DATABASE ktutorial_db TO postgres;


Then apply the web application deployment and service files:

    ```bash 
        kubectl apply -f webapp.yaml


### 4. **Troubleshooting**:
If you face any issues, check the logs of the PostgreSQL or web app pods using:

    ```bash
    kubectl logs <pod-name>


## Kubernetes Configuration Files

The following Kubernetes configuration files are used to deploy and manage the web application and database:

1. **postgres-secret.yaml**: Stores sensitive information like the PostgreSQL username and password.
2. **postgres-config-map.yaml**: Contains the configuration for the PostgreSQL service, including the URL to connect to the database.
3. **postgres-pvc.yaml**: Defines the Persistent Volume Claim (PVC) for the PostgreSQL database to prevent data loss on pod restarts.
4. **postgres.yaml**: Defines the PostgreSQL deployment and service.
5. **webapp.yaml**: Defines the Django web application deployment and service, as well as the environment variables to connect to PostgreSQL.

For detailed explanations, refer to the LinkedIn Article: [Learning Kubernetes through Example (Part 1/3): K8s Configuration Files, Webapp, and Minikube Setup]

 




