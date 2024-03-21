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
Monitoring and logging solutions for observability with Kube Prometheus Stack (Grafana, Prometheus, Alert Manager) on Kubernetes cluster
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
Detailed Project Descriptions
Jenkins_with_Helm_task2
Contains the customized Jenkins Helm files and installation scripts. Install the Jenkins tool in the Jenkins namespace. Create the secrets for Jenkins using the jenkins-secrets folder and apply the YAML files.

shell
Copy code
$ ls -la Jenkins_with_Helm-task2
$ ls -la jenkins-secrets
python-app-task3
Python application for basic mathematical operations. Created Python files, Dockerfile, Helm charts templates, and script files.

In the Jenkins pipeline, use a Docker container as an agent to build the Python image and push it to the Docker Hub repository. Deploy the application through the Jenkins pipeline script using the Alpine/Helm container to install Helm charts.

Helm charts are inside the "charts" subfolder, and all necessary files and scripts are created to deploy the application with Helm.

shell
Copy code
$ ls -la python-app-task3
react-product-app-task6
Simple product listing application that uses React, Spring Boot, and MySQL as the frontend, backend, and database, respectively.

Building the application through Jenkins, source code is selected from GitHub, upload the built container to Docker Hub, and deploy the application with Kubernetes manifest files inside the Jenkins Job. Create a custom Alpine container with the kubectl utility, push it to Docker Hub, and use that image in the deployment stage. Use the Kubernetes YAML manifest files in the deployment stage inside the Jenkinsfile pipeline script.

kube-prometheus-stack-task5-7
Used to deploy the kube-prometheus-stack Helm repo and customize the configuration files inside the values.yaml for service type change to NodePort and configured the LDAP search parameters and other configs inside the Grafana container for authentication and authorization test for Grafana application through the OpenLDAP service.

shell
Copy code
$ ls -la kube-prometheus-stack-task5-7
$ helm ls -n grafana-prometheus
$ k get deployments.apps -n grafana-prometheus
$ helm ls -n ldap
$ k get deployments.apps -n ldap
$ k get svc -n ldap
Istio Test Task
Install Istio and select the demo mode for all features. Follow up the Istio official documentation below. Deploy the application with YAML files and verify that the sidecar Istio container injected.

shell
Copy code
$ ls -la istio-test-task4
$ k get pods -n istio-test
User
başlıkları da alıgılasın
ChatGPT
Tabii, başlıkları da kalın olarak biçimlendirelim:

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
Monitoring and logging solutions for observability with Kube Prometheus Stack (Grafana, Prometheus, Alert Manager) on Kubernetes cluster
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
Detailed Project Descriptions
Jenkins_with_Helm_task2
Contains the customized Jenkins Helm files and installation scripts. Install the Jenkins tool in the Jenkins namespace. Create the secrets for Jenkins using the jenkins-secrets folder and apply the YAML files.

shell
Copy code
$ ls -la Jenkins_with_Helm-task2
$ ls -la jenkins-secrets
python-app-task3
Python application for basic mathematical operations. Created Python files, Dockerfile, Helm charts templates, and script files.

In the Jenkins pipeline, use a Docker container as an agent to build the Python image and push it to the Docker Hub repository. Deploy the application through the Jenkins pipeline script using the Alpine/Helm container to install Helm charts.

Helm charts are inside the "charts" subfolder, and all necessary files and scripts are created to deploy the application with Helm.

shell
Copy code
$ ls -la python-app-task3
react-product-app-task6
Simple product listing application that uses React, Spring Boot, and MySQL as the frontend, backend, and database, respectively.

Building the application through Jenkins, source code is selected from GitHub, upload the built container to Docker Hub, and deploy the application with Kubernetes manifest files inside the Jenkins Job. Create a custom Alpine container with the kubectl utility, push it to Docker Hub, and use that image in the deployment stage. Use the Kubernetes YAML manifest files in the deployment stage inside the Jenkinsfile pipeline script.

kube-prometheus-stack-task5-7
Used to deploy the kube-prometheus-stack Helm repo and customize the configuration files inside the values.yaml for service type change to NodePort and configured the LDAP search parameters and other configs inside the Grafana container for authentication and authorization test for Grafana application through the OpenLDAP service.

shell
Copy code
$ ls -la kube-prometheus-stack-task5-7
$ helm ls -n grafana-prometheus
$ k get deployments.apps -n grafana-prometheus
$ helm ls -n ldap
$ k get deployments.apps -n ldap
$ k get svc -n ldap
Istio Test Task
Install Istio and select the demo mode for all features. Follow up the Istio official documentation below. Deploy the application with YAML files and verify that the sidecar Istio container injected.

shell
Copy code
$ ls -la istio-test-task4
$ k get pods -n istio-test
