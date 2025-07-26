import boto3
import os

dynamodb = boto3.resource("dynamodb")
table = dynamodb.Table(os.environ["TABLE_NAME"])

def lambda_handler(event, context):
    response = table.update_item(
        Key={"ID": "nicoxmcdportfolio"},
        UpdateExpression="ADD views :inc",
        ExpressionAttributeValues={":inc": 1},
        ReturnValues="UPDATED_NEW"
    )
    return {"statusCode": 200, "body": str(response["Attributes"])}
