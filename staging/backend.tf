# Configure the backend to backup the tf state file
terraform {
  backend "s3" {
    bucket         = "mamatha-app1-s3-bucket"
    key            = "github-tf-workflow/staging/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "app1-s3-bucket-table"
    encrypt        = true
  }
}