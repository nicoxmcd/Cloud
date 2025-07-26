import boto3
import os

dynamodb = boto3.resource("dynamodb")
table = dynamodb.Table(os.environ["TABLE_NAME"])

def lambda_handler(event, context):
    # Retrieve the current visitor count
    item = table.get_item(Key={"ID":"nicoxmcdportfolio"})
    views = item["Item"]["views"]

    # Increment the visitor count
    views += 1

    # Update the DynamoDB table with the new count
    table.put_item(Item={"id": "0", "views": views})

    return {"statusCode": 200, "body": views}
