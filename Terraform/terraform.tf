terraform {
  backend "s3" {
    bucket         = "terraform-state"
    key            = "nicoxmcdportfolio/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
