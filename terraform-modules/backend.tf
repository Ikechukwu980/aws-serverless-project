terraform {
  backend "s3" {
    bucket         = "ikeboy-1234"
    key            = "terraform-module/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Terraform-state-lock"
    encrypt        = true
  }
}

