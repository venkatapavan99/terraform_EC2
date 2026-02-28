terraform {
  backend "s3" {
    bucket         = "pavan-demo-s-terraform"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
