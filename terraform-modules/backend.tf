terraform {
  backend "s3" {
    bucket         = "ikeboy-1234"                  # S3 bucket for state storage
    key            = "serverless-web-app/terraform.tfstate"  # State file key
    region         = "us-east-1"                    # AWS region
    dynamodb_table = "terraform-state-lock"         # Complete DynamoDB table name
    encrypt        = true                           # Encrypt state file
  }
}

