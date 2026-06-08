terraform {
  backend "s3" {
    bucket         = "digi-dev-tf-s3-bucket"
    key            = "eks/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "digi-dev-tf-lock-state"
  }
}