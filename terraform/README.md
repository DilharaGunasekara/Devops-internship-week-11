# Week 11 - Terraform Infrastructure

## Purpose

This directory contains the Terraform Infrastructure as Code (IaC)
for the DevOps internship project.

Terraform is responsible for repeatable cloud infrastructure
provisioning.

## AWS Infrastructure

Terraform currently provisions:

- AWS VPC
- Public subnet
- Internet Gateway
- Public route table
- Internet route
- Route table association
- Application security group
- EC2 application server

## Architecture

```text
Terraform
    |
    v
AWS VPC
    |
    +--> Public Subnet
    |       |
    |       +--> Route Table
    |       |       |
    |       |       +--> Internet Gateway
    |       |
    |       +--> Security Group
    |               |
    |               +--> TCP 3000
    |
    +--> EC2 t3.micro
            |
            +--> Amazon Linux 2023