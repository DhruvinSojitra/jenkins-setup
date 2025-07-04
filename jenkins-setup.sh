#!/bin/bash

# Exit if any command fails
set -e

echo "👉 Installing Java..."
sudo yum install -y java-21

echo "👉 Adding Jenkins repo..."
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

echo "👉 Importing Jenkins GPG key..."
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "👉 Installing Jenkins..."
sudo yum install -y jenkins

echo "👉 Enabling and starting Jenkins..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "✅ Jenkins installation completed!"
