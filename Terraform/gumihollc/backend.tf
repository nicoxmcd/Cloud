terraform {
  backend "state" {
    bucket         = "gumihollc-tfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
