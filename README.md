🚀 AutoSecureDock – Security Audit for Docker Containers

AutoSecureDock is an automated security auditing tool for Docker images.
It integrates multiple open-source security tools (Trivy, Dockle, Hadolint, and Gitleaks) to provide a comprehensive vulnerability and compliance check on container images.

This project ensures Docker images are analyzed for:

Vulnerabilities (CVEs)

Misconfigurations and CIS best practice violations

Insecure Dockerfile practices

Hardcoded secrets and API keys

The reports generated help developers and security teams detect risks early and apply remediations before deploying containers into production.

📂 Project Structure
AutoSecureDock/
│── .github/workflows/       # GitHub Actions CI/CD workflow for automated audits
│── utils/                   # Utility scripts (scanners)
│   ├── trivy_scan.sh        # Runs vulnerability scan using Trivy
│   ├── dockle_scan.sh       # Runs best-practices scan using Dockle
│   ├── hadolint_check.sh    # Dockerfile linting
│   └── gitleaks_scan.sh     # Secret scanning
│── Dockerfile               # Containerized environment setup
│── README.md                # Project documentation
│── remediator.py            # Auto-remediation script (basic fixes & suggestions)
│── requirements.txt         # Python dependencies
│── run_audit.sh             # Main script to run full security audit

⚡ Features

✅ Automated Multi-Tool Scanning – Runs Trivy, Dockle, Hadolint, and Gitleaks in one command
✅ Centralized Reports – Outputs results into a /reports directory for easy review
✅ Remediation Suggestions – remediator.py provides guided fixes for detected issues
✅ CI/CD Integration – GitHub Actions workflow for automated security checks on push/pull requests
✅ Customizable – Extendable to scan any Docker image, not just nginx:latest

🛠️ Tools Used

Trivy
 → Vulnerability and secret scanning

Dockle
 → CIS benchmark and best-practices scanning

Hadolint
 → Linting Dockerfiles for security & maintainability

Gitleaks
 → Detecting hardcoded secrets in source code

🚀 Usage
1️⃣ Clone the repository
git clone https://github.com/<your-username>/AutoSecureDock.git
cd AutoSecureDock

2️⃣ Make the script executable
chmod +x run_audit.sh

3️⃣ Run the security audit
./run_audit.sh nginx:latest

4️⃣ View reports
cd reports
cat trivy_nginx_latest.txt
cat dockle_nginx_latest.txt
cat hadolint_nginx_latest.txt
cat gitleaks_nginx_latest.txt


(Optional) Serve reports locally:

cd reports
python3 -m http.server 8080


Then open → http://localhost:8080

🤖 GitHub Actions – CI/CD Integration

The project includes a GitHub Actions workflow (.github/workflows/docker-audit.yml) that:

Runs the audit automatically on every commit or pull request

Fails the pipeline if critical vulnerabilities are found

Stores scan results as CI artifacts

🛡️ Example Workflow
flowchart LR
    A[Pull Docker Image] --> B[Run run_audit.sh]
    B --> C[Trivy - Vulnerabilities]
    B --> D[Dockle - CIS Best Practices]
    B --> E[Hadolint - Dockerfile Linting]
    B --> F[Gitleaks - Secret Detection]
    C --> G[Reports Generated]
    D --> G
    E --> G
    F --> G
    G --> H[Remediation Suggestions]

📊 Sample Output
Trivy (Vulnerability Scan)
nginx:latest (debian 11.7)
==================================
Total Vulnerabilities: 12
Critical: 2 | High: 5 | Medium: 4 | Low: 1

Dockle (Best Practices)
WARN - DKL-DI-0006: Avoid latest tag
INFO - CIS-DI-0006: Add HEALTHCHECK instruction

Hadolint (Dockerfile Linting)
Dockerfile:6 DL3042 warning: Avoid use of cache directory with pip
Dockerfile:7 DL3059 info: Multiple consecutive RUN instructions

Gitleaks (Secret Scanning)
No leaks found ✅

🔮 Future Enhancements

Support for PDF/HTML consolidated reports

Integration with Slack/Jira for automated alerts

Policy-based enforcement (block builds on critical issues)

Extend to Kubernetes manifests scanning

👩‍💻 Author

Dhananjay S
💼 Cybersecurity & DevSecOps Enthusiast
📌 Project: Security Audit for Docker Containers
