# 🛡️ AutoSecureDock

A powerful, modular security audit tool for Docker containers.  
It leverages top-tier open-source scanners like **Trivy**, **Dockle**, **Hadolint**, and **Gitleaks** to assess Docker images, Dockerfiles, and your working directory for vulnerabilities and misconfigurations.

---

## 🚀 Features

- 🔍 **Trivy**: Scan Docker images for OS and application vulnerabilities
- 🐳 **Dockle**: Analyze container best practices and hardening issues
- 📄 **Hadolint**: Enforce best practices in your Dockerfile
- 🔐 **Gitleaks**: Detect hardcoded secrets in your codebase
- 💡 **Remediator**: Provide basic suggestions to fix insecure Dockerfiles
- 🧾 **Report Generator**: Saves outputs in the `/reports` folder

---

## 🛠️ Prerequisites

Make sure the following are installed:
- Docker
- Python3 + pip
- Tools: `trivy`, `dockle`, `hadolint`, `gitleaks`

Install dependencies:
```bash
sudo apt update
sudo apt install docker.io python3-pip curl wget unzip git -y
pip3 install -r requirements.txt
