# 🚀 AutoSecureDock – Security Audit for Docker Containers

**AutoSecureDock** is an automated security auditing tool for **Docker images**.  
It integrates multiple open-source security tools (**Trivy, Dockle, Hadolint, and Gitleaks**) to provide a **comprehensive vulnerability and compliance check** on container images.

This project ensures Docker images are analyzed for:

- 🛡️ Vulnerabilities (CVEs)
- ⚠️ Misconfigurations & CIS best practice violations
- 📜 Insecure Dockerfile practices
- 🔑 Hardcoded secrets and API keys

The reports generated help developers and security teams **detect risks early** and apply remediations before deploying containers into production.

---

## ⚡ Features

- ✅ **Automated Multi-Tool Scanning** – Runs Trivy, Dockle, Hadolint, and Gitleaks in one command  
- 📊 **Centralized Reports** – Outputs results into a `/reports` directory for easy review  
- 🔧 **Remediation Suggestions** – `remediator.py` provides guided fixes for detected issues  
- 🔄 **CI/CD Integration** – GitHub Actions workflow for automated security checks on push/pull requests  
- ⚙️ **Customizable** – Extendable to scan any Docker image, not just `nginx:latest`  

---

## 🛠️ Tools Used

- **Trivy** → Vulnerability & secret scanning  
- **Dockle** → CIS benchmark & best-practices scanning  
- **Hadolint** → Linting Dockerfiles for security & maintainability  
- **Gitleaks** → Detecting hardcoded secrets in source code  

---

## 🚀 Usage

1️⃣ Clone the repository  

git clone https://github.com/<your-username>/AutoSecureDock.git
cd AutoSecureDock

2️⃣ Make the script executable
- chmod +x run_audit.sh

3️⃣ Run the security audit
- ./run_audit.sh nginx:latest

4️⃣ View reports
- cd reports
- cat trivy_nginx_latest.txt
- cat dockle_nginx_latest.txt
- cat hadolint_nginx_latest.txt
- cat gitleaks_nginx_latest.txt

🔮 Future Enhancements

📑 Support for PDF/HTML consolidated reports

🔔 Integration with Slack/Jira for automated alerts

🛑 Policy-based enforcement (block builds on critical issues)

☸️ Extend to Kubernetes manifests scanning
👩‍💻 Author

Dhananjay S
💼 Cybersecurity & DevSecOps Enthusiast
📌 Project: Security Audit for Docker Containers
