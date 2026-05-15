AWS Terraform Portfolio Infrastructure
## Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision and manage AWS resources for a cloud engineering portfolio. It unifies manually created and newly provisioned infrastructure into a single, version-controlled configuration.

Built using Terraform by HashiCorp and deployed on Amazon Web Services.

## 🎯 Objective

To design and manage cloud infrastructure using Infrastructure as Code, including:

* Static website hosting
* Serverless-ready data storage
* Existing AWS resource adoption into Terraform
* Reproducible cloud environments

## ☁️ Architecture

The infrastructure includes:

* Amazon S3 → Hosts portfolio website (imported existing bucket)
* Amazon DynamoDB → Stores task data for serverless API
* Terraform state management (local for now, upgradeable to remote backend)

## 🧱 Infrastructure as Code Components
1. S3 Bucket (Portfolio Hosting)
Hosts static frontend portfolio
Managed via Terraform after import
Tagged for environment tracking

2. DynamoDB Table (Task API)
Schema-based NoSQL database
Used for serverless backend applications
Provisioned using Terraform

## ⚙️ Tech Stack
Terraform (IaC)
AWS S3
AWS DynamoDB
AWS IAM
Git + GitHub

## 📁 Project Structure
aws-terraform-portfolio-infrastructure/
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── README.md

## 🚀 How to Deploy
1. Initialize Terraform
terraform init
2. Validate configuration
terraform validate
3. Import existing S3 bucket
terraform import aws_s3_bucket.portfolio_bucket <YOUR_BUCKET_NAME>
4. Import DynamoDB table
terraform import aws_dynamodb_table.tasks Tasks
5. Preview changes
terraform plan
6. Apply infrastructure
terraform apply

## 🔐 Key Concepts Demonstrated
* Infrastructure as Code (IaC)
* Resource adoption using Terraform import
* AWS service provisioning
* State management
* Cloud architecture design

## 🧠 What I Learned
* How to convert manually created AWS resources into Terraform-managed infrastructure
* How Terraform state tracking works
* How AWS permissions affect infrastructure deployment
* How to structure reusable cloud infrastructure code

## 📈 Future Improvements
* Remote state backend using S3 + DynamoDB locking
* CI/CD pipeline with GitHub Actions
* AWS CloudFront integration for CDN
* Route 53 custom domain setup
* IAM least-privilege role refinement

## 🏁 Outcome

This project demonstrates the ability to:

Design, provision, and manage real AWS infrastructure using Terraform while integrating existing cloud resources into a scalable Infrastructure-as-Code workflow.

## Author
Ese Daniel