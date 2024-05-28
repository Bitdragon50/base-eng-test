import json
from unittest.mock import patch, MagicMock
from main import lambda_handler

@patch('main.logger')
def test_lambda_handler_how_are_you(mock_logger):
    event = {'body': json.dumps({'question': 'How are you?'})}
    context = MagicMock()
    expected_response = {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": "I am fine, thank you!"
    }

    response = lambda_handler(event, context)
    assert response == expected_response
    mock_logger.info.assert_called_with(expected_response)

@patch('main.logger')
def test_lambda_handler_whats_your_name(mock_logger):
    event = {'body': json.dumps({'question': 'Whats your name?'})}
    context = MagicMock()
    expected_response = {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": "My name is Lambda!"
    }

    response = lambda_handler(event, context)
    assert response == expected_response
    mock_logger.info.assert_called_with(expected_response)
    

@patch('main.logger')
def test_lambda_handler_invalid_question(mock_logger):
    event = {'body': json.dumps({'question': 'Invalid question?'})}
    context = MagicMock()
    expected_response = {
        "statusCode": 400,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": "I'm sorry I don't understand the question.",
        "acceptedOptions": [
            "How are you?",
            "Whats your name?",
            "How old are you?",
            "Where are you from?",
            "What is your favourite Colour?"
        ]
    }

    response = lambda_handler(event, context)
    assert response == expected_response
    mock_logger.info.assert_called_with(expected_response)
