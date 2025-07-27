resource "aws_dynamodb_table" "db" {
  name           = "nicoxmcdportfolio-views"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "ID"

  attribute {
    name = "ID"
    type = "S"
  }
  
  tags = {
    Project = var.domain_name
  }
}


