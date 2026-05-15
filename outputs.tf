output "s3_bucket_name" {
  value       = aws_s3_bucket.portfolio_bucket.bucket
  description = "Name of the S3 bucket hosting the portfolio"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.tasks.name
  description = "Name of the DynamoDB table for the Task API"
}