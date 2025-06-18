import os

print("\n[+] Suggested Fixes for Dockerfile")

with open("Dockerfile", "r") as f:
    lines = f.readlines()

for i, line in enumerate(lines):
    if "USER root" in line:
        print(f"[!] Line {i+1}: Avoid using root user")
    if "latest" in line:
        print(f"[!] Line {i+1}: Avoid using 'latest' tag")
    if "apt-get install" in line and "-y" not in line:
        print(f"[!] Line {i+1}: Add '-y' flag to apt installs")
