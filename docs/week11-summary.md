# Week 11 — Terraform, Ansible and Docker Deployment

## 1. Objective

The objective of Week 11 was to provision AWS infrastructure using Terraform, configure the application server with Ansible, and deploy the application as a Docker container.

## 2. Technologies Used

- AWS EC2
- AWS Systems Manager (SSM)
- Terraform
- Ansible
- Docker
- Node.js
- Git and GitHub
- Ubuntu on WSL

## 3. Infrastructure Provisioning

Terraform was used to manage the AWS infrastructure, including the networking resources, security group, EC2 instance, IAM permissions for Systems Manager, and S3 resources required for Ansible SSM transfers.

Terraform formatting and validation completed successfully.

## 4. Server Configuration

Ansible connected to the EC2 instance through AWS Systems Manager and configured the server.

The playbook installed and started Docker, created the application directory, copied the application files, built the Docker image, and started the application container.

## 5. Docker Deployment

The application was packaged using the Dockerfile in the `app/` directory.

- Docker image: `devops-ecommerce:latest`
- Container name: `devops-ecommerce`
- Application port: `3000`
- Application version: `v1`

The container was verified running with Docker, and the application returned the expected HTML response on port 3000.

## 6. Application Testing

The application tests were executed using:

```bash
cd app
npm test
```

Result: All automated tests passed successfully.

## 7. Version Control

The application and Ansible deployment changes were committed and pushed to the GitHub repository.

- Branch: `main`
- Commit: `a51f176`
- Commit message: `Deploy application with Docker and Ansible`

## 8. Cost Management

After completing deployment verification, the EC2 instance was stopped to reduce compute costs.

The instance can be started again if further testing is required. Other AWS resources may continue to incur charges.

## 9. Outcome

The Week 11 implementation demonstrated infrastructure provisioning with Terraform, server configuration with Ansible, Docker-based application deployment, application testing, and source control using GitHub.

The EC2 instance was stopped after successful verification.

