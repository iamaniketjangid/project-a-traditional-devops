# Project A – Traditional DevOps Setup

## Overview
This project demonstrates a traditional DevOps workflow using:
- Dockerfile-based image build
- GitHub Actions for CI/CD
- Kubernetes manifests
- Terraform for infrastructure provisioning

## Tech Stack
- Node.js
- Docker
- GitHub Actions
- Kubernetes (Minikube)
- Terraform

## Key Characteristics
- Large Docker image (~1.13 GB)
- Full rebuild on every pipeline run
- Manual image and deployment handling
- Runtime fragility in Kubernetes rollouts

## Purpose
This project is part of a comparison with a modern DevOps approach (Project B),
to highlight time, cost, and operational differences.

> Same application, same goal — different tooling.
