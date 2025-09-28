#!/usr/bin/env bash
set -e
docker rm -f tf-devops-lab 2>/dev/null || true
echo "DOWN"
