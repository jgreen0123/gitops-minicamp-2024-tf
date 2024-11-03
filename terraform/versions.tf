terraform {
  required_version = ">= 1.0.0, < 2.0.0"
  backend "s3" {
    bucket = "gitops-tf-backend-rg2017"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "GitopsTerraformLocks-rg2017"
  }
}
