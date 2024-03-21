Microservices CI/CD Pipeline using Kubernetes, Istio, Jenkins, Helm, OpenLDAP, Kube Prometheus Stack (Grafana, Prometheus, Alert Manager), and Docker Hub
This repository contains the configuration and setup for a comprehensive CI/CD pipeline for managing microservices deployments using Kubernetes, Jenkins, Helm Package Manager, Istio, GitHub, and Docker Hub integration.

Overview
The CI/CD pipeline is designed to automate the build, test, and deployment processes for microservices applications. It leverages various tools and technologies to streamline the development lifecycle and ensure reliability and scalability in deployments.

Features
Automated builds, tests, and deployments
Kubernetes cluster setup and configuration
Jenkins setup with customized Helm chart and integrations
Istio integration for service mesh functionalities
Helm charts for managing Kubernetes application deployments
Deployment of open-source monitoring solutions (LDAP) using Helm for authentication and authorization tests
GitHub integration for source code management and CI/CD pipeline triggers
Docker Hub integration for Docker image usage
Monitoring and logging solutions for observability with Kube Prometheus Stack (Grafana, Prometheus, Alert Manager) on Kubernetes cluster.
Prerequisites
Before setting up the CI/CD pipeline, ensure you have the following prerequisites installed and configured:

Kubernetes cluster (e.g., Minikube, GKE, EKS)
Istio installed and configured on the Kubernetes cluster
Helm installed on your local machine
Docker installed on your local machine
CI/CD tool configured (e.g., Jenkins, GitLab CI/CD, GitHub Actions)
Create the following namespaces in the Kubernetes environment:
default Active 3d16h
grafana-prometheus Active 3d2h
istio-system Active 3d
istio-test Active 3d
jenkins Active 3d15
ldap Active 3d2h
react Active 2d1h
Create an SSH key on Linux VM and integrate it with the GitHub repository.
Integrate Docker Hub and Jenkins: From Jenkins GUI --> Managed Jenkins --> Credentials.
Create a test user from LDAP GUI to test the Grafana GUI authentication and authorization.
