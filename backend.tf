terraform {
  backend "s3" {
    bucket         = "daniel-ese-cloud-portfolio-tf-state"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}