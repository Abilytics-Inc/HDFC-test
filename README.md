# Test Architecture

├── app/
│   ├── src/          # Application source code
│   ├── tf/           # ECR infrastructure
│   └── Dockerfile    # Container configuration
├── infra/           # Core infrastructure (ECS, VPC, etc.)
├── deploy/          # Deployment configurations
└── .github/workflows/
├── terraform-ecr.yml     # ECR provisioning
├── terraform.yml         # Infrastructure deployment
└── app-ci-cd.yml        # Application deployment

## Prerequisites
1. AWS Account with appropriate permissions
2. GitHub Actions Secrets:
   - `IAM_ROLE` - AWS role ARN for infrastructure
   - `CENTRAL_ACCOUNT_IAM_ROLE` - Role for ECR access
   - `ECS_SECRET` - ECS configuration secrets

## Workflows
The deployment is managed through three GitHub Actions workflows:
1. ECR Repository Provisioning
2. Infrastructure Deployment
3. Application Build and Deploy

## Quick Start
1. Clone the repository
2. Configure required GitHub secrets
3. Push to main branch to trigger deployments

## Repository Information
- Organization: [Abilytics-Inc](https://github.com/Abilytics-Inc)
- Repository: [HDFC-test](https://github.com/Abilytics-Inc/HDFC-test)


## Overview
This repository contains infrastructure code for a test data generation API using AWS ECS with blue-green deployment capability.

## Architecture
![Architecture Diagram](path-to-your-diagram.png)

The architecture consists of:
- API Gateway with Cognito authentication
- Application Load Balancer
- ECS Fargate service
- Blue-Green deployment using AWS CodeDeploy
- CI/CD pipeline using GitHub Actions

## Repository Structure