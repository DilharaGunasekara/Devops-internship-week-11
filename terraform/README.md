# Week 11 - Terraform Infrastructure

## Purpose

This directory contains the Terraform Infrastructure as Code (IaC)
for the DevOps internship project.

## Role of Terraform

Terraform is responsible for repeatable infrastructure provisioning.

Server configuration and application deployment will be handled by
later stages of the project using Ansible and Kubernetes.

## Project Context

Week 10 established the application CI/CD and DevSecOps pipeline:

GitHub -> Jenkins -> Test -> Docker Build -> Security Scan -> Docker Hub

Week 11 begins the Infrastructure as Code stage.

## Terraform Structure

- main.tf       - Main infrastructure configuration
- variables.tf  - Input variables
- outputs.tf    - Infrastructure outputs
- README.md     - Terraform documentation

## Current Status

Terraform installation verified successfully.

Terraform version: 1.15.8

Infrastructure resources have not yet been provisioned.
