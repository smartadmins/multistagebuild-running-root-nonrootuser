# 🐳 Docker Image Optimization, Security & Multi-Stage Build

> **Enterprise DevOps Project** demonstrating Docker image optimization, container security, and production best practices using Multi-stage builds, Non-root containers, Trivy security scanning, and resource optimization.

![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker)
![Node.js](https://img.shields.io/badge/Node.js-Application-green?logo=node.js)
![Trivy](https://img.shields.io/badge/Security-Trivy-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue)
![Status](https://img.shields.io/badge/Project-Completed-success)

---

# 📖 Project Overview

Container images are often larger than necessary and may contain security vulnerabilities or run with excessive privileges. This project demonstrates how to build secure and optimized Docker images using enterprise DevOps practices.

The project compares a standard Docker image with an optimized multi-stage image, demonstrates the differences between running containers as **root** and **non-root** users, analyzes resource utilization, and scans container images for vulnerabilities using **Trivy**.

-------------------------

# 🎯 Objectives

- Build a standard Docker image
- Optimize images using Multi-stage builds
- Compare image sizes
- Run containers as Root and Non-root users
- Improve Docker security
- Scan container images using Trivy
- Monitor Docker resource usage
- Follow production-ready Docker best practices

---

# 📂 Project Structure

```
docker-security-optimization/
│
├── app/
│   ├── package.json
│   ├── package-lock.json
│   ├── server.js
│   └── ...
│
├── dockerfiles/
│   ├── Dockerfile.basic
│   ├── Dockerfile.multistage
│   ├── Dockerfile.root
│   └── Dockerfile.nonroot
│
├── sripts/
|    |── reports
|       |── trivy-report-basic.txt
|       |── trivy-report-basic.txt    
|── trivyscan.sh
│   
└── README.md
```

---

# 🚀 Features

- ✅ Standard Docker Build
- ✅ Multi-stage Docker Build
- ✅ Docker Image Size Comparison
- ✅ Root Container Execution
- ✅ Non-root Container Execution
- ✅ Docker Resource Monitoring
- ✅ Trivy Vulnerability Scanning
- ✅ Docker Security Best Practices

---

# 🏗️ Architecture

```
                +----------------------+
                |   Node.js Application |
                +----------+-----------+
                           |
                 Docker Build Process
                           |
      +--------------------+--------------------+
      |                                         |
Basic Dockerfile                      Multi-stage Dockerfile
      |                                         |
 Large Image                            Optimized Image
      |                                         |
 Run as Root                          Run as Non-root
      |                                         |
      +--------------------+--------------------+
                           |
                     Trivy Security Scan
                           |
                  Vulnerability Report
                           |
                    Resource Monitoring
```

---

# ⚙️ Prerequisites

- Docker
- Node.js (optional)
- Trivy
- Git

---

# 🛠️ Building Docker Images

## 1️⃣ Build Basic Docker Image

```bash
docker build \
-f dockerfiles/Dockerfile.basic \
-t docker-basic .
```

---

## 2️⃣ Build Multi-stage Docker Image

```bash
docker build \
-f dockerfiles/Dockerfile.multistage \
-t docker-multistage .
```

---

## View Docker Images

```bash
docker images
```

Example:

| Repository | Tag | Size |
|------------|-----|------|
| docker-basic | latest | XXX MB |
| docker-multistage | latest | XX MB |

> 📌 Replace the values with your actual image sizes.

---

# 📊 Image Size Comparison

| Feature | Basic Build | Multi-stage Build |
|----------|-------------|-------------------|
| Build Size | XXX MB | XX MB |
| Build Speed | Standard | Faster |
| Security | Medium | Better |
| Production Ready | ❌ | ✅ |

### Benefits of Multi-stage Builds

- Smaller images
- Faster deployment
- Reduced attack surface
- Improved cache utilization
- Better security
- Reduced storage consumption

---

# 👤 Building Images for Root & Non-root Containers

## Build Root Image

```bash
docker build \
-f dockerfiles/Dockerfile.root \
-t node-root:v1 .
```

---

## Build Non-root Image

```bash
docker build \
-f dockerfiles/Dockerfile.nonroot \
-t node-nonroot:v1 .
```

---

# ▶️ Running Containers

## Run Root Container

```bash
docker run -d \
--name app-root \
-p 5001:3000 \
node-root:v1
```

---

## Run Non-root Container

```bash
docker run -d \
--name app-nonroot \
-p 5002:3000 \
node-nonroot:v1
```

> **Note:** Use different host ports (5001 and 5002) to avoid port conflicts.

---

## Verify Running Containers

```bash
docker ps
```

---

# 🔍 Verify Running User

## Root Container

```bash
docker exec app-root whoami
```

Expected Output

```
root
```

---

## Non-root Container

```bash
docker exec app-nonroot whoami
```

Expected Output

```
appuser
```

*(or the username configured in your Dockerfile)*

---

# 🔒 Security Scanning with Trivy

## Scan Basic Image

```bash
trivy image docker-basic
```

---

## Scan Multi-stage Image

```bash
trivy image docker-multistage
```

---

## Generate HTML Report

```bash
trivy image \
--format template \
--template "@contrib/html.tpl" \
-o trivy-report.html \
docker-multistage
```

---

## Generate JSON Report

```bash
trivy image \
--format json \
-o trivy-report.json \
docker-multistage
```

---

# 📈 Resource Monitoring

Monitor CPU, Memory, Network, and Block I/O usage.

```bash
docker stats
```

Example:

| Container | CPU | Memory | Network | Status |
|------------|-----|---------|----------|--------|
| app-root | 0.25% | 25 MB | Low | Running |
| app-nonroot | 0.20% | 24 MB | Low | Running |

---

# 🔐 Docker Security Best Practices

✔ Use Multi-stage builds

✔ Use lightweight base images

✔ Run containers as Non-root users

✔ Minimize installed packages

✔ Scan images regularly using Trivy

✔ Avoid storing secrets inside images

✔ Use `.dockerignore`

✔ Keep dependencies updated

✔ Pin image versions

✔ Remove unnecessary build tools

✔ Monitor container resource usage

---

# 📷 Suggested Screenshots

Include screenshots in the `screenshots/` directory.

| Screenshot | Description |
|------------|-------------|
| docker-images.png | Image size comparison |
| basic-image.png | Basic build |
| multistage-image.png | Multi-stage build |
| root-user.png | Root execution |
| non-root-user.png | Non-root execution |
| trivy-scan.png | Trivy vulnerability report |
| docker-stats.png | Resource usage |

---

# 📋 Project Results

| Requirement | Status |
|-------------|--------|
| Basic Docker Build | ✅ |
| Multi-stage Build | ✅ |
| Image Size Comparison | ✅ |
| Trivy Scan | ✅ |
| Root User Execution | ✅ |
| Non-root User Execution | ✅ |
| Resource Optimization | ✅ |
| Docker Best Practices | ✅ |

---

# 🎓 Learning Outcomes

After completing this project, you will understand:

- Docker image layering
- Multi-stage Docker builds
- Image optimization techniques
- Docker security best practices
- Vulnerability scanning using Trivy
- Running containers as Root vs Non-root users
- Docker resource monitoring
- Production-ready containerization
- Image size optimization
- Container hardening strategies

---

# 🚀 Future Enhancements

- GitHub Actions CI/CD Integration
- Jenkins Pipeline Integration
- Generate Software Bill of Materials (SBOM)
- Image Signing using Cosign
- Push images to Docker Hub / Private Registry
- Scan Infrastructure as Code (IaC)
- Dockerfile linting using Hadolint
- Kubernetes deployment
- Runtime security using Falco
- Continuous vulnerability scanning

---

# 📚 References

- Docker Documentation  
  https://docs.docker.com/

- Trivy Documentation  
  https://aquasecurity.github.io/trivy/

- Docker Best Practices  
  https://docs.docker.com/develop/dev-best-practices/

- Docker Multi-stage Builds  
  https://docs.docker.com/build/building/multi-stage/

- CIS Docker Benchmark  
  https://www.cisecurity.org/benchmark/docker

---

# 👨‍💻 Author

**Sudheesh K**

Senior Infrastructure Lead | DevOps & Cloud Engineer

### Technologies Used

- Docker
- Node.js
- Trivy
- Linux
- Git
- GitHub

---

## ⭐ If you found this project useful, please consider giving it a Star!

It helps others discover the project and motivates further improvements.
