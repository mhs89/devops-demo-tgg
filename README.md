# Microservices CI/CD Pipeline
## Overview
This repository contains the configuration and setup for a comprehensive CI/CD pipeline for managing microservices deployments using Kubernetes, Jenkins, Helm, Istio, GitHub, and Docker Hub integration. In this demo, three different microservice application will be deployed for different purposes and configuration files of applications are placed in each indivual folders.

## Components
**Jenkins_with_Helm_task2:** The folder contains;
* Customized Jenkins Helm files and installation scripts.
* Install Jenkins tool in the **jenkins** namespace.
* Create secrets for Jenkins using the **jenkins-secrets** folder and apply the YAML files.
  
```bash
  $ ls -la /devops-demo/Jenkins_with_Helm-task2
    -rw-r--r-- 1 root     root       217 Mar 19 10:38 Chart.lock
     drwxr-xr-x 3 root     root      4096 Mar 19 10:38 charts
    -rw-r--r-- 1 root     root       184 Mar 19 10:38 Chart.yaml
    -rwxr-xr-x 1 root     root       409 Mar 19 10:38 diff.sh
    -rwxr-xr-x 1 root     root       554 Mar 19 10:38 dry_run.sh
    -rw-r--r-- 1 root     root     19672 Mar 19 10:38 dry_run.yaml
    -rwxr-xr-x 1 root     root       414 Mar 19 10:38 install.sh
    -rw-r--r-- 1 root     root       450 Mar 19 10:38 values.yaml
  ```

**Jenkins Secrets:** 
* YAML files for Jenkins secrets.
```bash
  $  ls -la /devops-demo/jenkins-secrets
```
**Python-app-task3:1:** The folder contains;
* Python application is developed for basic mathematical operations.
* Includes Python files, Dockerfile, Helm chart templates, and script files.
* Jenkins pipeline uses a Docker container as an agent to build the Python image and push it to Docker Hub.
* Deployment of the application through Jenkins pipeline script using the alpine/helm container to install Helm charts.

  Helm charts are inside the "**charts**" subfolder
```bash
$ ls -la /devops-demo/python-app-task3
  drwxr-xr-x 3 sicakyuz sicakyuz 4096 Mar 19 10:32 charts
  -rw-r--r-- 1 sicakyuz sicakyuz  375 Mar 19 10:32 Dockerfile
  -rw-r--r-- 1 sicakyuz sicakyuz 2484 Mar 21 12:49 Jenkinsfile
  -rw-r--r-- 1 sicakyuz sicakyuz   96 Mar 19 10:32 main.py
  -rw-r--r-- 1 sicakyuz sicakyuz  377 Mar 19 10:32 myapp-deployment.yaml
  -rw-r--r-- 1 sicakyuz sicakyuz  476 Mar 19 10:32 python-depl.yaml
```
**React-product-app-task6:**
* Simple product listing application that is using React for frontend, Spring Boot as backend, and MySQL database
* **GitHub repository:** **thearaseng/react-product-app**.
* Building the application through Jenkins, selecting source code from GitHub, uploading the built container to Docker Hub, and deploying the application with Kubernetes manifest files inside the Jenkins job.
* Create a custom alpine container with kubectl utility, push it to Docker Hub, and use that image in the deployment stage of Jenkins pipeline.
* Use Kubernetes YAML manifest files in the deployment stage inside the Jenkinsfile pipeline's script.
  
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
   Name:         jenkins-cluster-role
  Labels:       <none>
  Annotations:  <none>
  PolicyRule:
    Resources  Non-Resource URLs  Resource Names  Verbs
    ---------  -----------------  --------------  -----
    *.*        []                 []              [get list watch create update delete]
```

## LDAP Configuration
* Installed OpenLDAP with a public Helm chart without customization in the **ldap** namespace.
* To install the chart with the release name my-release:
```bash
$ helm repo add helm-openldap https://jp-gouin.github.io/helm-openldap/
$ helm install my-release helm-openldap/openldap-stack-ha
```
LDAP Deployments and Services
```bash
$ helm ls -n ldap
$ k get deployments.apps -n ldap
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
my-release-ltb-passwd     1/1     1            1           3d2h
my-release-phpldapadmin   1/1     1            1           3d2h
$ k get svc -n ldap
NAME                      TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)           AGE
my-release                ClusterIP   10.103.36.115    <none>        389/TCP,636/TCP   3d2h
my-release-headless       ClusterIP   None             <none>        389/TCP           3d2h
my-release-ltb-passwd     ClusterIP   10.109.99.94     <none>        80/TCP            3d2h
my-release-phpldapadmin   NodePort    10.104.240.191   <none>        80:30370/TCP      3d2h
```
## Istio Installation
Install Istio and select the demo mode for all features. Follow up on the Istio official documentation:
https://istio.io/latest/docs/setup/getting-started/

## CI/CD Pipeline Features
* Automated builds, tests, and deployments.
* Kubernetes cluster setup and configuration.
* Jenkins setup with customized Helm chart and integrations.
* Istio integration for service mesh functionalities.
* Helm charts for managing Kubernetes application deployments.
* Deployment of open-source monitoring solutions (LDAP) using Helm for authentication and authorization tests.
* GitHub integration for source code management and CI/CD pipeline triggers.
* Docker Hub integration for Docker image usage.
* Monitoring and logging solutions for observability with kube Prometheus stack (Grafana, Prometheus, Alert Manager) on Kubernetes cluster.

## Prerequisites
Before setting up the CI/CD pipeline, ensure you have the following prerequisites installed and configured:

* Kubernetes cluster (e.g., Minikube, GKE, EKS).
* Istio installed and configured on the Kubernetes cluster.
* Helm installed on your local machine.
* Docker installed on your local machine.
* CI/CD tool configured (Prometheus Stack, Jenkins, Helm).
* Create the required namespaces in the Kubernetes environment.
      **grafana-prometheus** 
      **istio-system**      
      **istio-test**        
      **jenkins**           
      **ldap**              
      **react**             
   
* Create an SSH key on the Linux VM and integrate it with the GitHub repository.
* Integrate Docker Hub and Jenkins: From Jenkins GUI --> **Managed Jenkins** --> **Credentials**
* Create a test user from LDAP GUI to test Grafana GUI authentication and authorization through LDAP.
