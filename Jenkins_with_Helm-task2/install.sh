#!/bin/bash
 
# Set the name of your Helm chart and values file
CHART_NAME="Jenkins"
VALUES_FILE="./values.yaml"
 
# Run helm dependency build to download and update dependencies
helm dependency build
 
# Run helm dependency update to make sure dependencies are up-to-date
helm dependency update
 
# Perform a dry run of the Helm chart installation
helm upgrade -n jenkins --install my-jenkins . -f ${VALUES_FILE}
