# Docker image Multistage build 
# Docker container run as root user and non-root users
# Security & Optimization

## Objective
This project demonstrates Docker image optimization using enterprise best practices.

## Features

- Basic Docker Image - Completed
- Multi-stage Build – Completed
- Image Size Comparison - Completed
- Root vs Non-root Containers - completed
- Resource Usage Analysis - Comleted
- Scanning image with Trivy - not compelted

#### Docker Build Command 
docker build -f dockerfiles/Dockerfile.basic -t docker-basic .
docker build -f dockerfiles/Dockerfile.multistage -t docker-multistage .
docker images 

## Building Images for  root user and non root users
docker build -f dockerfiles/Dockerfile.root -t node-root:v1 .
docker build -f dockerfiles/Dockerfile.nonroot -t node-nonroot:v1 .
 

## Run Containers As root and non root 
docker run -d --name app-root -p 5001:3000 node-root:v1
docker run -d --name app-nonroot -p 5001:3000 node-nonroot:v1
docker ps
 

## To verify
docker exec app-root whoami

docker exec app-nonroot whoami
 

## Resource Monitoring

docker stats
 

# Expected Results
 
 | Requirement | Status |
 |-------------|--------|
 | Basic Docker Build | ✅ |
 | Multi-stage Build | ✅ |
 | Image Size Comparison | ✅ |
 | Trivy Scan | ✅ |
 | Root User Execution | ✅ |
 | Non-Root User Execution | ✅ |
 | Resource Optimization | ✅ |
 | Docker Best Practices | ✅ |
 
 ---
 
 # Learning Outcomes
 
 After completing this project, you will understand:
 
 - Docker image layering
 - Multi-stage Docker builds
 - Image optimization strategies
 - Docker security best practices
 - Vulnerability management with Trivy
 - Root vs Non-Root container execution
 - Resource management and monitoring
 - Production-ready containerization techniques
 
 ---
 
 # Future Enhancements
 
 - Integrate Trivy into a CI/CD pipeline (GitHub Actions/Jenkins)
 - Generate SBOM (Software Bill of Materials)
 - Sign images using Cosign
 - Push images to a private container registry
 - Scan Infrastructure as Code (IaC) files
 - Enforce Dockerfile linting with Hadolint
 - Deploy optimized images to Kubernetes
 
 ---
 
 # References
 
 - Docker Documentation: https://docs.docker.com/
 - Trivy Documentation: https://aquasecurity.github.io/trivy/
 - Docker Best Practices: https://docs.docker.com/develop/dev-best-practices/
 - Docker CIS Benchmark: https://www.cisecurity.org/benchma
