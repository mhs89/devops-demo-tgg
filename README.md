# Microservices CI/CD Pipeline using the Kubernetes, Istio, Jenkins , Helm , OpenLdap, Kube Prometheus Stack ( Grafana, Prometheus, Alert Manager) and Docker Hub

This repository contains the configuration and setup for a comprehensive 
CI/CD pipeline for managing microservices deployments using Kubernetes,Jenkins,
Helm Package Manager, Istio, GitHub and Docker Hub integration. 

In this demo, three different microservice application will be deployed for different purposes and 
configuration files of applications are placed in each indivual folders.


Jenkins_with_Helm_task2 : Contains the customized Jenkins Helm files and installation scripts. Install the Jenkins tool in jenkins namespace
-rw-r--r-- 1 root     root       217 Mar 19 10:38 Chart.lock
 drwxr-xr-x 3 root     root      4096 Mar 19 10:38 charts
-rw-r--r-- 1 root     root       184 Mar 19 10:38 Chart.yaml
-rwxr-xr-x 1 root     root       409 Mar 19 10:38 diff.sh
-rwxr-xr-x 1 root     root       554 Mar 19 10:38 dry_run.sh
-rw-r--r-- 1 root     root     19672 Mar 19 10:38 dry_run.yaml
-rwxr-xr-x 1 root     root       414 Mar 19 10:38 install.sh
-rw-r--r-- 1 root     root       450 Mar 19 10:38 values.yaml


python-app-task3 : Python application is for basic mathematical opeations. Created pyhton files, Dockerfile, 
Helm charts templates and scipt files .
In Jenkins pipeline, use docker container as agent to build the python image and push the dockerhub 
and deploy the application with Helms using the alpine/helm container from public Dockerhub repository.

Helm charts are inside the "charts" subfolder and created all necessary files and scripts to deploy the application with Helm.

===============================================================================
drwxr-xr-x 3 sicakyuz sicakyuz 4096 Mar 19 10:32 charts
-rw-r--r-- 1 sicakyuz sicakyuz  375 Mar 19 10:32 Dockerfile
-rw-r--r-- 1 sicakyuz sicakyuz 2484 Mar 21 12:49 Jenkinsfile
-rw-r--r-- 1 sicakyuz sicakyuz   96 Mar 19 10:32 main.py
-rw-r--r-- 1 sicakyuz sicakyuz  377 Mar 19 10:32 myapp-deployment.yaml
-rw-r--r-- 1 sicakyuz sicakyuz  476 Mar 19 10:32 python-depl.yaml

Clusterrole , Clusterrolebinding and service account permission are expended for all resources in the cluster .
Jenkins uses default serviceaccount and it has all get , list , write, delete permissions
=================================================================================
/Desktop$ k describe clusterrolebindings.rbac.authorization.k8s.io -n jenkins jenkins-cluster-role-binding
Name:         jenkins-cluster-role-binding
Labels:       <none>
Annotations:  <none>
Role:
  Kind:  ClusterRole
  Name:  jenkins-cluster-role
Subjects:
  Kind            Name     Namespace
  ----            ----     ---------
  ServiceAccount  default  jenkins


$ k describe clusterrole -n jenkins jenkins-cluster-role 
Name:         jenkins-cluster-role
Labels:       <none>
Annotations:  <none>
PolicyRule:
  Resources  Non-Resource URLs  Resource Names  Verbs
  ---------  -----------------  --------------  -----
  *.*        []                 []              [get list watch create update delete]

======================================================================================


react-product-app-task6: Simple product listing application that uses React, Spring Boot,and MySQL as the frontend, backend, and database, respectively.
Public Github link: thearaseng/react-product-app.
Building the application through Jenkins , source code is selected Github , upload the builded container to 
Docker hub and Deploy the application with kubernetes manifest files inside the Jenkins Job. Create custom alpine container 
with kubectl utility , pushed the docker and use that image in deployment stage. Use the kubernetes yaml manifest files in deployment stage.


kube-prometheus-stack-task5-7 : Use to deploy kube-prometheus-stack helm repo and customize the configuration files inside the values.yaml for service type change to NodePort
and configured the ldap search parameters and other configs inside the grafana container for authentication and autherization test for Grafana through OpenLdap.

-rw-r--r-- 1 sicakyuz sicakyuz  256 Mar 19 10:37 Chart.lock
drwxr-xr-x 2 sicakyuz sicakyuz 4096 Mar 19 10:37 charts
-rwxr-xr-x 1 sicakyuz sicakyuz  298 Mar 19 10:37 Chart.yaml
-rwxr-xr-x 1 sicakyuz sicakyuz  402 Mar 19 10:37 diff.sh
-rwxr-xr-x 1 sicakyuz sicakyuz  552 Mar 19 10:37 dry_run.sh
-rwxr-xr-x 1 sicakyuz sicakyuz  423 Mar 19 10:37 install.sh
-rwxr-xr-x 1 sicakyuz sicakyuz  999 Mar 19 10:37 values.yaml

Deploy the applications on grafana-prometheus namespace.

sicakyuz@sicakyuz-virtualbox:/devops-demo/kube-prometheus-stack-task5-7$ helm ls -n grafana-prometheus 
NAME            NAMESPACE               REVISION        UPDATED                                 STATUS          CHART                   APP VERSION
my-prometheus   grafana-prometheus      1               2024-03-18 12:06:13.787233037 +0300 +03 deployed        my-prometheus-0.1.0     0.40.0  


sicakyuz@sicakyuz-virtualbox:/devops-demo/kube-prometheus-stack-task5-7$ k get deployments.apps -n grafana-prometheus 
NAME                                  READY   UP-TO-DATE   AVAILABLE   AGE
my-prometheus-grafana                 1/1     1            1           3d2h
my-prometheus-kube-prometh-operator   1/1     1            1           3d2h
my-prometheus-kube-state-metrics      1/1     1            1           3d2h


## Overview

The CI/CD pipeline is designed to automate the build, test, and deployment processes for microservices applications. 
It leverages various tools and technologies to streamline the development lifecycle and ensure reliability and scalability in deployments.

## Features

- Automated builds, tests, and deployments
- Kubernetes cluster setup and configuration
- Jenkins setup with customized Helm chart and integrations
- Istio integration for service mesh functionalities
- Helm charts for managing Kubernetes application deployments
- Deployment of open-source monitoring solutions(LDAP)  using Helm for authentication and autherization tests.
- GitHub integration for source code management and CI/CD pipeline triggers
- Docker Hub integration for docker image usage
- Monitoring and logging solutions for observability with kube prometheus stack (Grafana, Prometheus, Alert Manager) on kubernetes cluster.

## Prerequisites

Before setting up the CI/CD pipeline, ensure you have the following prerequisites installed and configured:

- Kubernetes cluster (e.g., Minikube, GKE, EKS)
- Istio installed and configured on the Kubernetes cluster
- Helm installed on your local machine
- Docker installed on your local machine
- CI/CD tool configured (e.g., Jenkins, GitLab CI/CD, GitHub Actions)
