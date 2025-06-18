#!/bin/bash

IMAGE=$1
mkdir -p reports

echo "[+] Running Trivy Scan..."
./utils/trivy_scan.sh $IMAGE > reports/trivy_$IMAGE.txt

echo "[+] Running Dockle Scan..."
./utils/dockle_scan.sh $IMAGE > reports/dockle_$IMAGE.txt

echo "[+] Running Hadolint Check..."
./utils/hadolint_check.sh > reports/hadolint_$IMAGE.txt

echo "[+] Running Gitleaks Scan (local directory)..."
./utils/gitleaks_scan.sh > reports/gitleaks_$IMAGE.txt

echo "[+] Audit Completed. Reports saved to /reports"

