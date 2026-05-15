############################################
# TERRAFORM REMOTE STATE INFRASTRUCTURE
############################################

# S3 bucket for Terraform state storage
resource "aws_s3_bucket" "tf_state" {
  bucket = "${var.bucket_name}-tf-state"

  tags = {
    Name    = "TerraformStateBucket"
    Project = "AWS Terraform Portfolio Infrastructure"
  }
}

# Enable versioning for state protection
resource "aws_s3_bucket_versioning" "tf_state_versioning" {
  bucket = aws_s3_bucket.tf_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

# DynamoDB table for state locking
resource "aws_dynamodb_table" "tf_lock" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name    = "TerraformLockTable"
    Project = "AWS Terraform Portfolio Infrastructure"
  }
}

############################################
# EXISTING INFRASTRUCTURE (YOUR PROJECT)
############################################

# S3 bucket used to host the static portfolio website
resource "aws_s3_bucket" "portfolio_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "CloudEngineerPortfolio"
    Project     = "AWS Terraform Portfolio Infrastructure"
    Environment = "Production"
  }
}

# DynamoDB table used by the Serverless Task API
resource "aws_dynamodb_table" "tasks" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "taskId"

  attribute {
    name = "taskId"
    type = "S"
  }

  tags = {
    Name        = "Tasks"
    Project     = "AWS Terraform Portfolio Infrastructure"
    Environment = "Production"
  }
}