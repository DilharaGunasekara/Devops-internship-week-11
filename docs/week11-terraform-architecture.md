\# Week 11 - Terraform Infrastructure Architecture



\## Purpose



This document defines the proposed cloud infrastructure architecture

for the DevOps internship project.



The architecture is based on the project requirement for Infrastructure

as Code using Terraform and cloud deployment.



\## Terraform Responsibility



Terraform will provision the underlying cloud infrastructure.



Terraform will not be responsible for application configuration or

application deployment.



Those responsibilities belong to later stages of the project.



\## Proposed AWS Architecture



The proposed infrastructure consists of:



\- AWS VPC

\- Public subnet

\- Internet Gateway

\- Route table

\- Security group

\- EC2 server



\## Infrastructure Flow



Terraform

&#x20;   |

&#x20;   v

AWS VPC

&#x20;   |

&#x20;   v

Public Subnet

&#x20;   |

&#x20;   v

EC2 Server

&#x20;   |

&#x20;   +--> Ansible configuration

&#x20;   |

&#x20;   +--> Kubernetes/application deployment



\## Responsibility Separation



\### Terraform



Infrastructure provisioning.



\### Ansible



Server configuration and software setup.



\### Kubernetes



Application orchestration and deployment.



\### Jenkins



CI/CD automation.



\### Prometheus and Grafana



Monitoring and observability.



\### ELK



Centralized logging.



\## Safety



AWS resources will not be provisioned until AWS credentials,

Terraform configuration, and the planned resources have been

reviewed.



Terraform plan will be reviewed before any infrastructure is created.



\## Current Status



Terraform local proof-of-concept completed.



AWS infrastructure has not yet been provisioned.

