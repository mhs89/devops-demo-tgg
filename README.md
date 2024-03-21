# Microservices CI/CD Pipeline
## Overview
This repository contains the configuration and setup for a comprehensive CI/CD pipeline for managing microservices deployments using Kubernetes, Jenkins, Helm, Istio, GitHub, and Docker Hub integration.

## Components
**Jenkins_with_Helm_task2:**
* Customized Jenkins Helm files and installation scripts.
* Install Jenkins tool in the Jenkins namespace.
* Create secrets for Jenkins using the **jenkins-secrets** folder and apply the YAML files.
```bash
  $ ls -la /devops-demo/Jenkins_with_Helm-task2
```

**Jenkins Secrets**
* YAML files for Jenkins secrets.
```bash
  $  ls -la /devops-demo/jenkins-secrets
```
**Python-app-task3:1:**
* Python application for basic mathematical operations.
* Includes Python files, Dockerfile, Helm chart templates, and script files.
* Jenkins pipeline uses a Docker container as an agent to build the Python image and push it to Docker Hub.
* Deployment of the application through Jenkins pipeline script using the alpine/helm container to install Helm charts.
  
```bash
$ ls -la /devops-demo/python-app-task3
```
**React-product-app-task6:**
* Simple product listing application using React, Spring Boot, and MySQL.
* GitHub repository: thearaseng/react-product-app.
* Building the application through Jenkins, selecting source code from GitHub, uploading the built container to Docker Hub, and deploying the application with Kubernetes manifest files inside the Jenkins job.
* Create a custom Alpine container with kubectl utility, push it to Docker Hub, and use that image in the deployment stage.
* Use Kubernetes YAML manifest files in the deployment stage inside the Jenkinsfile pipeline script.
  
```bash  
$ ls -la /devops-demo/react-product-app-task6
```

**Kube-prometheus-stack-task5-7:**
Deploy kube-prometheus-stack Helm repo and customize the configuration files inside the **values.yaml** for service type change to NodePort.
Configure LDAP search parameters and other configs inside the Grafana container for authentication and authorization testing for Grafana application through OpenLDAP service.

```bash
$ ls -la /devops-demo/kube-prometheus-stack-task5-7
```
**Istio-test-task4:**
Deploy the application with YAML files and verify that the sidecar Istio container is injected.

```bash
$ ls -la /devops-demo/istio-test-task4
```

## Kubernetes Configuration
* ClusterRole, ClusterRoleBinding, and Service account permissions are expanded for all resources in the cluster.
* Jenkins uses the default service account with permissions for get, list, write, and delete operations.
  
```bash
$ k describe clusterrolebindings.rbac.authorization.k8s.io -n jenkins jenkins-cluster-role-binding
$ k describe clusterrole -n jenkins jenkins-cluster-role 
```

## LDAP Configuration
* Installed OpenLDAP with a public Helm chart without customization in the LDAP namespace.
* To install the chart with the release name my-release:
