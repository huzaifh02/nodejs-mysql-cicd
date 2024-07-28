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

## Deploying Node.js App on EC2

The Node.js app is deployed on an EC2 instance using Docker. The steps include:

1. **Build Docker Image**:
    docker build -t huzaifh02/nodejsapp:latest .


2. **Run Docker Container**:
   docker run -d --name nodejsapp -p 3000:3000 huzaifh02/nodejsapp:latest
   
## Setting Up CI/CD Pipeline

The Jenkinsfile for setting up the CI/CD pipeline is included in the repository.

## Monitoring

Monitoring is set up using Prometheus and Grafana. These services are deployed on a separate EC2 instance.

1. **Prometheus Configuration**:
   - Scrape configurations for the Node.js app and other services are added to \`prometheus.yml\`.

2. **Grafana Configuration**:
   - Prometheus is added as a data source in Grafana.
   - Dashboards are created to visualize key metrics.

## Terraform Templates

The Terraform templates provision the required infrastructure on AWS. The following files are included in the repository:
- \`vars.tf\`: Defines the variables.
- \`keypairs.tf\`: Defines the key pairs.
- \`secgrp.tf\`: Defines the security groups.
- \`backend-services.tf\`: Defines the EC2 instances and RDS instance.

## Setup and Run Instructions

### Prerequisites

1. Install Docker.
2. Install Terraform.
3. Install Jenkins.
4. AWS account with the necessary permissions.

### Steps

1. **Clone the repository**:
   \`\`\`sh
   git clone https://github.com/huzaifh02/nodejs-mysql-cicd.git
   \`\`\`

2. **Navigate to the repository directory**:
   \`\`\`sh
   cd nodejs-mysql-cicd
   \`\`\`

3. **Initialize Terraform**:
   \`\`\`sh
   terraform init
   \`\`\`

4. **Validate the Terraform configuration**:
   \`\`\`sh
   terraform validate
   \`\`\`

5. **Plan the deployment**:
   \`\`\`sh
   terraform plan
   \`\`\`

6. **Apply the Terraform configuration**:
   \`\`\`sh
   terraform apply
   \`\`\`

7. **Set up Jenkins and configure the Jenkinsfile for the CI/CD pipeline**.

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
