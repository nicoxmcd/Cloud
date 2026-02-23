import boto3
import json
import os

dynamodb = boto3.resource("dynamodb", region_name='us-east-1')
table = dynamodb.Table(os.environ.get("TABLE_NAME", "nicolexanportfolio-views"))

def lambda_handler(event, context):
    response = table.update_item(
        Key={"ID": "nicolexanportfolio"},
        UpdateExpression="ADD #v :inc",
        ExpressionAttributeNames={"#v": "views"},
        ExpressionAttributeValues={":inc": 1},
        ReturnValues="UPDATED_NEW"
    )
    views = int(response["Attributes"]["views"])

    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({"views": views})
    }
