terraform {
  backend "s3" {
    bucket         = "ikeboy-1234"
    key            = "serverless-web-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-"
    encrypt        = true
  }
}
