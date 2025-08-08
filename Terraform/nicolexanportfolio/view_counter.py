import boto3
import json
import os

dynamodb = boto3.resource("dynamodb", region_name='us-east-1')
table = dynamodb.Table("nicolexanportfolio-views")

def lambda_handler(event, context):
    # Retrieve the current visitor count
    item = table.get_item(Key={"ID":"nicolexanportfolio"})
    views = int(item["Item"]["views"])

    # Increment the visitor count
    views += 1

    # Update the DynamoDB table with the new count
    table.put_item(Item={"ID":"nicolexanportfolio", "views": views})

    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({"views": views})
    }