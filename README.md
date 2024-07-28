# DevOps Mentor Task

## Presentation Video

https://github.com/user-attachments/assets/cc52304e-0107-46f6-96e3-c20b7738408b

## Architecture Diagrams

### CI/CD Pipeline Diagram

![arch2](https://github.com/user-attachments/assets/84e7501b-e925-455c-8674-6e343225fd68)

### Terraform and AWS Resources Diagram

![arch1](https://github.com/user-attachments/assets/71f63fb4-f611-459e-93bb-6cd232a5771a)

## Dockerizing the Node.js App

The Dockerfile for the Node.js app is included in the repository.

## Setting Up AWS Resources

The following AWS resources are set up using Terraform:

1. **EC2 Instances**:
   - `nodejsapp`
   - `jenkins`
   - `monitoring`

2. **RDS Instance**:
   - The RDS instance is created with the following settings:
     - DB Instance Identifier: mysql57-instance
     - DB Instance Class: db.t2.micro
     - Engine: mysql
     - Engine Version: 5.7
     - Allocated Storage: 20 GB
     - Master Username: root
     - Master User Password: 12345678

3. **Key Pairs**:
   - `jenkins`
   - `nodejsapp`

4. **Security Groups**:
   - `jenkins`
   - `nodejsapp`
   - `rds`
   - `monitoring`
  
## Terraform Templates

The Terraform templates provision the required infrastructure on AWS. The following files are included in the repository:

- `backend.tf`: Configures the backend for Terraform state storage.
- `instances.tf`: Defines the EC2 instances for Jenkins, monitoring, and the Node.js app.
- `keypairs.tf`: Defines the key pairs for SSH access to the instances.
- `providers.tf`: Configures the providers required for the AWS resources.
- `rds.tf`: Defines the RDS instance for the MySQL database.
- `secgrp.tf`: Defines the security groups for Jenkins, monitoring, Node.js app, and RDS.
- `vars.tf`: Defines the variables used in the Terraform configuration.

## Monitoring

Monitoring is set up using Prometheus and Grafana. These services are deployed on a separate EC2 instance.

1. **Prometheus Configuration**:
   - Scrape configurations for the Node.js app and other services are added to \`prometheus.yml\`.

2. **Grafana Configuration**:
   - Prometheus is added as a data source in Grafana.
   - Dashboards are created to visualize key metrics.

## Setting Up CI/CD Pipeline

The Jenkinsfile for setting up the CI/CD pipeline is included in the repository.  

## Setup and Run Instructions

### Prerequisites

1. Install Docker.
2. Install Terraform.
3. Install Jenkins.
4. AWS account with the necessary permissions.

### Steps

1. **Clone the repository**:
   git clone https://github.com/huzaifh02/nodejs-mysql-cicd.git
   

2. **Navigate to the repository directory**:
   cd nodejs-mysql-cicd/Terraform
   

3. **Initialize Terraform**:
   terraform init  
   
4. **Validate the Terraform configuration**:
   terraform validate

5. **Plan the deployment**:
   terraform plan

6. **Apply the Terraform configuration**:
   terraform apply

7. **Set up Jenkins,  and configure the Jenkinsfile for the CI/CD pipeline**.

8. **Deploy the Node.js app using Docker commands**.

## Design Decisions

- **Infrastructure as Code (IaC)**: Used Terraform for provisioning infrastructure to ensure consistency and repeatability.
- **Docker**: Containerized the Node.js app to make the deployment process easier and more consistent across environments.
- **CI/CD Pipeline**: Implemented using Jenkins to automate the build, test, and deployment processes.
- **Monitoring**: Set up Prometheus and Grafana for real-time monitoring and visualization of metrics.

## Challenges Faced

- **Terraform Configuration**: Ensuring the Terraform configuration was correct and that all dependencies were properly managed.
- **Jenkins Pipeline**: Configuring the Jenkins pipeline to work seamlessly with Docker and Terraform.
- **Security Groups**: Properly configuring security groups to ensure secure and functional network communication between instances and services.

---
