#!/usr/bin/env bash
set -e
docker rm -f tf-devops-lab 2>/dev/null || true
docker run -d -p 8082:80 --name tf-devops-lab laith313/devops-lab:latest
echo "UP -> http://localhost:8082"
