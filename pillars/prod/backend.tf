terraform {
  backend "s3" {
    bucket         = "eks-terraform-state-prod"
    key            = "eks/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "eks-lock-prod"
  }
}