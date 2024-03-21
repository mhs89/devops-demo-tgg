Microservices CI/CD Pipeline

This repository provides a comprehensive CI/CD pipeline for deploying microservices on Kubernetes. It leverages Jenkins, Helm, Istio, Docker Hub, and the kube-prometheus stack for a robust and automated deployment process.

Key Features

Automated build, test, and deployment workflows
Kubernetes cluster setup and configuration
Customized Jenkins with Helm chart integration
Istio service mesh for advanced routing and traffic management
Helm charts for simplified application deployments
OpenLDAP deployment for authentication and authorization (Grafana integration)
Seamless integration with GitHub for source code management and pipeline triggers
Docker Hub integration for container image storage and retrieval
Monitoring and logging with the kube-prometheus stack (Grafana, Prometheus, Alert Manager)
Prerequisites

Kubernetes cluster (Minikube, GKE, EKS, etc.)
Istio installed and configured on the Kubernetes cluster
Helm installed locally
Docker installed locally
CI/CD tool (Jenkins, GitLab CI/CD, GitHub Actions)
Namespaces created in your Kubernetes environment (default, grafana-prometheus, istio-system, istio-test, jenkins, ldap, react)
SSH key configured on your Linux VM and integrated with the GitHub repository
Docker Hub and Jenkins integrated (via Jenkins credentials)
Test user created in LDAP for Grafana authentication testing
Project Structure

The repository is organized into several folders, each containing the configuration and scripts for a specific microservice or deployment task:

Jenkins_with_Helm-task2: Contains customized Jenkins Helm files and installation scripts for deploying Jenkins in the jenkins namespace.
python-app-task3: Holds Python application code (Python files, Dockerfile, Helm charts, and build scripts). The Jenkins pipeline utilizes Docker containers for building and pushing the Python image to Docker Hub. Helm charts and scripts are used for deployment.
react-product-app-task6: This folder contains scripts and manifest files for deploying a React-based product listing application with Spring Boot and MySQL. The application leverages GitHub for source code, Docker Hub for container storage, and Kubernetes deployment manifests managed by the Jenkins pipeline.
kube-prometheus-stack-task5-7: Provides configuration for deploying the kube-prometheus-stack with customized values.yaml for service type changes (NodePort) and LDAP integration for Grafana authentication. OpenLDAP is also deployed in a separate namespace using a public Helm chart.
istio-test-task4: Contains deployment files for a sample Istio application demonstrating sidecar injection.
Getting Started

Ensure you have the prerequisites mentioned above.
Clone this repository to your local machine.
Follow the specific instructions within each folder for configuring and deploying the corresponding microservice or task.
