
Microservices CI/CD Pipeline using Kubernetes, Istio, Jenkins, Helm, OpenLDAP, Kube Prometheus Stack, and Docker Hub
This repository contains the configuration and setup for a comprehensive CI/CD pipeline for managing microservices deployments using Kubernetes, Jenkins, Helm Package Manager, Istio, GitHub, and Docker Hub integration.

Jenkins_with_Helm_task2
This folder contains the customized Jenkins Helm files and installation scripts. Install the Jenkins tool in the jenkins namespace. Create the secrets for Jenkins using the jenkins-secrets folder and apply the YAML files.

bash
Copy code
$ helm repo add jenkins https://charts.jenkins.io
$ helm install jenkins jenkins/jenkins -n jenkins -f jenkins-values.yaml
python-app-task3
The Python application is for basic mathematical operations. It includes Python files, a Dockerfile, Helm chart templates, and script files.

In the Jenkins pipeline, a Docker container is used as an agent to build the Python image and push it to the Docker Hub repository. The application is deployed through the Jenkins pipeline script using the alpine/helm container to install Helm charts.

bash
Copy code
$ helm install python-app -n python-app -f python-app-values.yaml
react-product-app-task6
This folder contains a simple product listing application using React, Spring Boot, and MySQL as the frontend, backend, and database, respectively. The source code is available on GitHub.

In the Jenkins pipeline, the source code is selected from GitHub. The built container is uploaded to Docker Hub, and the application is deployed using Kubernetes manifest files inside the Jenkins Job.

bash
Copy code
$ helm install react-product-app -n react-product-app -f react-product-app-values.yaml
kube-prometheus-stack-task5-7
This folder is used to deploy the kube-prometheus-stack Helm repository and customize the configuration files inside the values.yaml. Service type is changed to NodePort, and LDAP search parameters and other configs inside the Grafana container for authentication and authorization tests for Grafana are configured.

bash
Copy code
$ helm install kube-prometheus-stack -n grafana-prometheus -f kube-prometheus-stack-values.yaml
istio-test-task4
Used to deploy the application with YAML files and verify that the Istio sidecar container is injected.

bash
Copy code
$ kubectl apply -f istio-test-task4
Overview
The CI/CD pipeline automates the build, test, and deployment processes for microservices applications. It leverages various tools and technologies to streamline the development lifecycle and ensure reliability and scalability in deployments.

Features
Automated builds, tests, and deployments
Kubernetes cluster setup and configuration
Jenkins setup with customized Helm chart and integrations
Istio integration for service mesh functionalities
Helm charts for managing Kubernetes application deployments
Deployment of open-source monitoring solutions (LDAP) using Helm for authentication and authorization tests.
GitHub integration for source code management and CI/CD pipeline triggers
Docker Hub integration for docker image usage
Monitoring and logging solutions for observability with Kube Prometheus Stack (Grafana, Prometheus, Alert Manager) on Kubernetes cluster.
Prerequisites
Before setting up the CI/CD pipeline, ensure you have the following prerequisites installed and configured:

Kubernetes cluster (e.g., Minikube, GKE, EKS)
Istio installed and configured on the Kubernetes cluster
Helm installed on your local machine
Docker installed on your local machine
CI/CD tool configured (e.g., Jenkins, GitLab CI/CD, GitHub Actions)
Create the required namespaces in the Kubernetes environment.
Create an SSH key on the Linux VM and integrate it with the GitHub repository.
Integrate Docker Hub and Jenkins: From Jenkins GUI --> Managed Jenkins --> Credentials.
Create a test user from the LDAP GUI to test the Grafana GUI authentication and authorizatio
