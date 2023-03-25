terraform {
  backend "s3" {
    key    = "devops-access-management/terraform.tfstate"
    region = "us-east-1"
  }
}