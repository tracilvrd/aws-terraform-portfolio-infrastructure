variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Unique name for the S3 bucket that hosts the portfolio website"
  type        = string
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table for the serverless Task API"
  type        = string
  default     = "Tasks"
}