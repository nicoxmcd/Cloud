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

# resource "aws_dynamodb_table_item" "initial_view_count" {
#   table_name = aws_dynamodb_table.db.name
#   hash_key   = "ID"
#   item       = jsonencode({
#     ID    = { S = "nicoxmcdportfolio" },
#     views = { N = "0" }
#   })
# }

