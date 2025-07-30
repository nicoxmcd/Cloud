import unittest
import json
from unittest.mock import patch, MagicMock
import sys
import os

# Ensure root directory is in path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

import view_counter as vc

class TestLambdaHandler(unittest.TestCase):

    @patch("view_counter.boto3.client")
    @patch("view_counter.boto3.resource")
    @patch("view_counter.table")

    def test_generate_success(self, mock_resource, mock_client):
        mock_table.get_item.return_value = {"Item": {"views": 5}}
        
        event = {}

        response = vc.lambda_handler(event, None)
        body = json.loads(response["body"])

        self.assertEqual(response["statusCode"], 200)
        self.assertIn("views", body)
        self.assertEqual(body["views"], 6)


if __name__ == "__main__":
    unittest.main()
