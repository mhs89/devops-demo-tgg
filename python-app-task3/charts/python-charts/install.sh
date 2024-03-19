#!/bin/bash
 
# Set the name of your Helm chart and values file
CHART_NAME="python-app-chart"

VALUES_FILE="./values.yaml"
 
# Run helm dependency build to download and update dependencies
helm dependency build
 
# Run helm dependency update to make sure dependencies are up-to-date
helm dependency update
 
# Perform a dry run of the Helm chart installation
helm upgrade --install pyhton-app . -f ${VALUES_FILE}