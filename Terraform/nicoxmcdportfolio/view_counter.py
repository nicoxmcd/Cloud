import boto3
import json
import os

dynamodb = boto3.resource("dynamodb", region_name='us-east-1')
table = dynamodb.Table("nicoxmcdportfolio-views")

def lambda_handler(event, context):
    # Retrieve the current visitor count
    item = table.get_item(Key={"ID":"nicoxmcdportfolio"})
    views = int(item["Item"]["views"])

    # Increment the visitor count
    views += 5

    # Update the DynamoDB table with the new count
    table.put_item(Item={"ID":"nicoxmcdportfolio", "views": views})

    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({"views": views})
    }