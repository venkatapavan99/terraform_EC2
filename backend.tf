terraform {
  backend "s3" {
    bucket         = "terraform-state-pavan-dev"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
