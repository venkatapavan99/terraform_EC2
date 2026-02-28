terraform {
  backend "s3" {
    bucket         = "pavan-jenkins-s3-2026-02026"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
