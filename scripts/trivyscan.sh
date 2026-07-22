#!/bin/bash

mkdir -p reports

echo "Scanning Basic Image..."
trivy image docker-basic \
  > reports/trivy-report-basic.txt

echo "Scanning Multi-stage Image..."
trivy image docker-multistage \
  > reports/trivy-report-multistage.txt

echo "Completed."
