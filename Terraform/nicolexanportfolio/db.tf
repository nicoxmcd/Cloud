resource "aws_dynamodb_table" "db" {
  name           = "${var.bucket_name}-views"
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

resource "aws_dynamodb_table_item" "initial_views" {
  table_name = aws_dynamodb_table.db.name
  hash_key   = aws_dynamodb_table.db.hash_key

  item = jsonencode({
    "ID"    = { "S" = "nicolexanportfolio" }
    "views" = { "N" = "2289" }
  })

  lifecycle {
    ignore_changes = [item]
  }
}


