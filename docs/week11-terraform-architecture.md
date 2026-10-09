# Week 11 - Terraform Infrastructure Architecture

## Purpose

This document describes the AWS infrastructure provisioned using Terraform
and the server configuration automated using Ansible.

## Terraform Responsibilities

Terraform provisions and manages the underlying AWS infrastructure.

The current infrastructure includes:

- AWS VPC
- Public subnet
- Internet Gateway
- Public route table and route association
- Security group
- EC2 instance
- IAM role and instance profile for AWS Systems Manager
- S3 bucket for Ansible-related file transfers
- S3 security settings, including encryption and public access blocking

## Ansible Responsibilities

Ansible configures the EC2 instance through AWS Systems Manager.

The application server role currently:

- Installs Docker
- Enables and starts the Docker service
- Creates the application directory at `/opt/devops-ecommerce`
- Verifies the Docker installation

## Infrastructure Flow

1. Terraform provisions the AWS infrastructure.
2. AWS Systems Manager provides access to the EC2 instance.
3. Ansible configures the server.
4. Application deployment and later platform components will be added as required.

## Responsibility Separation

### Terraform
AWS infrastructure provisioning and lifecycle management.

### Ansible
Server configuration and software installation.

### Docker
Application containerization.

### Jenkins
CI/CD automation.

### Kubernetes
Application orchestration, as part of the broader project.

### Prometheus, Grafana and ELK
Monitoring, visualization and centralized logging, as part of the broader project.

## Current Status

- Terraform infrastructure provisioned and managed through Terraform state.
- EC2 access through AWS Systems Manager verified.
- Ansible playbook syntax checked successfully.
- Ansible playbook executed successfully.
- Docker installed, enabled and running on the EC2 instance.
- Application directory created and Docker version verified.

## Safety Notes

Terraform state files are required to track managed resources and must not be
deleted manually.

Review Terraform plans before applying infrastructure changes.
AWS credentials and secret values must not be committed to Git.
