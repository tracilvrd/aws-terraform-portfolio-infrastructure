AWS Terraform Portfolio Infrastructure


## 🚀 Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision and manage cloud resources on AWS. It combines manually created infrastructure with Terraform-managed resources, creating a unified, version-controlled cloud environment.

The project also integrates CI/CD automation via GitHub Actions with secure OIDC authentication, eliminating the need for long-lived AWS credentials.

Built using Terraform by HashiCorp and deployed on Amazon Web Services.


## 🎯 Objectives
1. Implement Infrastructure as Code using Terraform
2. Host a static portfolio website on AWS
3. Build a serverless-ready backend data layer
4. Adopt existing AWS resources into Terraform state
5. Implement secure CI/CD using GitHub Actions + OIDC
6. Create reproducible and scalable cloud infrastructure


## ☁️ Architecture

The infrastructure consists of:

* Amazon S3 → Static portfolio hosting (imported into Terraform)
* Amazon DynamoDB → Task API data storage
* Terraform remote state backend (S3 + DynamoDB locking)
* GitHub Actions CI/CD pipeline with OIDC authentication


## 🧱 Infrastructure Components
1. S3 Bucket (Portfolio Hosting)
* Hosts static frontend portfolio
* Imported into Terraform state management
* Environment-tagged and version-controlled

2. DynamoDB Table (Task API)
* NoSQL database for serverless applications
* Uses taskId as primary key
* Provisioned via Terraform

3. Terraform Remote State
* S3 backend for state storage
* DynamoDB table for state locking
* Enables safe collaborative infrastructure management

4. CI/CD Pipeline
* GitHub Actions workflow
* Terraform validation and planning on every push
* Secure authentication via AWS OIDC (no static credentials)


## ⚙️ Tech Stack
* Terraform (Infrastructure as Code)
* AWS S3
* AWS DynamoDB
* AWS IAM
* Git + GitHub
* GitHub Actions (CI/CD)
* OIDC Authentication (Secure AWS access)


## 📁 Project Structure
aws-terraform-portfolio-infrastructure/
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── backend.tf
├── terraform.tfvars
├── .gitignore
├── .github/
│   └── workflows/
│       └── terraform.yml
└── README.md


## 🚀 Deployment Workflow
1. Initialize Terraform
terraform init
2. Validate configuration
terraform validate
3. Import existing S3 bucket
terraform import aws_s3_bucket.portfolio_bucket <YOUR_BUCKET_NAME>
4. Import DynamoDB table
terraform import aws_dynamodb_table.tasks Tasks
5. Plan infrastructure changes
terraform plan
6. Apply infrastructure
terraform apply


## 🔐 CI/CD Pipeline (GitHub Actions)

The pipeline automatically:
1. Initializes Terraform
2. Validates configuration
3. Runs terraform plan on every push

Authentication is handled securely using AWS OIDC federation, removing the need for stored AWS access keys.


## 🧠 Key Concepts Demonstrated
1. Infrastructure as Code (IaC)
2. AWS resource provisioning and management
3. Terraform state management and import workflow
4. Remote state backend with locking
5. Secure CI/CD with GitHub Actions
6. OIDC-based identity federation with AWS IAM


## 📈 Future Improvements
* Add AWS CloudFront for global CDN distribution
* Configure Route 53 custom domain
* Add terraform apply approval workflow in CI/CD


## 🏁 Outcome
This project demonstrates the ability to:

1. Design and manage production-grade AWS infrastructure using Terraform
2. Integrate existing cloud resources into Infrastructure as Code
3. Build secure CI/CD pipelines using GitHub Actions and OIDC authentication
4. Implement scalable and reproducible cloud architecture workflows


##👤 Author
Ese Daniel