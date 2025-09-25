terraform {
  backend "s3" {
    bucket         = "nicolexanportfolio-tfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
  }
}
