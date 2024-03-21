# Microservices CI/CD Pipeline using the Kubernetes, Istio, Jenkins , Helm , OpenLdap, Kube Prometheus Stack ( Grafana, Prometheus, Alert Manager) and Docker Hub

This repository contains the configuration and setup for a comprehensive CI/CD pipeline for managing microservices deployments using Kubernetes,Jenkins,Helm Package Manager, Istio, GitHub and Docker Hub integration. 
In this demo, three different microservice application will be deployed for different purposes and configuration files of applications are placed in each indivual folders.


Jenkins_with_Helm_task2 : Contains the customized Jenkins Helm files and installation scripts.
python-app-task3 : Contains 



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
