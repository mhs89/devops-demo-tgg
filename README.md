# Microservices CI/CD Pipeline with Kubernetes, Istio, and Helm

This repository contains the configuration and setup for a comprehensive CI/CD pipeline for managing microservices deployments using Kubernetes,Jenkins , Helm and GitHub integration. 
There are two application inside the "python-app-task3" and "react-product-app-task6" folder and all required files packaged inside of them.

## Overview

The CI/CD pipeline is designed to automate the build, test, and deployment processes for microservices applications. 
It leverages various tools and technologies to streamline the development lifecycle and ensure reliability and scalability in deployments.

## Features

- Automated builds, tests, and deployments
- Kubernetes cluster setup and configuration
- Jenkins setup with customized Helm chart and integrations
- Istio integration for service mesh functionalities
- Helm charts for managing Kubernetes application deployments
- Deployment of open-source monitoring solutions(LDAP)  using Helm and Kubernetes operators
- GitHub integration for source code management and CI/CD pipeline triggers
- Monitoring and logging solutions for observability with kube prometheus stack (Grafana, Prometheus, Kibana)

## Prerequisites

Before setting up the CI/CD pipeline, ensure you have the following prerequisites installed and configured:

- Kubernetes cluster (e.g., Minikube, GKE, EKS)
- Istio installed and configured on the Kubernetes cluster
- Helm installed on your local machine
- Docker installed on your local machine
- CI/CD tool configured (e.g., Jenkins, GitLab CI/CD, GitHub Actions)
