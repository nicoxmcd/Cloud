terraform {
  backend "s3" {
    bucket         = "${var.bucket_name}-tfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
