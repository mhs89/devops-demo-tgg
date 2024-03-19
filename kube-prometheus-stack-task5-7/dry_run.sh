#!/bin/bash

# Set the name of your Helm chart and values file
VALUES_FILE="./values.yaml"

# Run helm dependency build to download and update dependencies
echo "Running helm dependency build..."
helm dependency build 

# Run helm dependency update to make sure dependencies are up-to-date
echo "Running helm dependency update..."
helm dependency update

# Perform a dry run of the Helm chart installation
echo "Performing a dry run of the Helm chart installation..."
helm -n prometheus upgrade --install --dry-run my-prometheus . -f "${VALUES_FILE}"

