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