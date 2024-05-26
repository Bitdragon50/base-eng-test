resource "aws_lambda_function" "event_handler" {
  function_name = "${var.function_name}_${var.environment}"
  role          = aws_iam_role.event_handler_execution_role.arn
  handler       = var.function_handler
  package_type  = var.package_type
  runtime       = var.runtime
  publish       = var.publish
  architectures = var.architectures
  timeout       = var.timeout
  s3_bucket     = var.filepath
  s3_key        = "${var.environment}/${var.git_branch}-function.zip"


  environment {
    variables = {
      POWERTOOLS_SERVICE_NAME = "${var.function_name}_${var.environment}"
      LOG_LEVEL               = var.log_level
    }
  }
}

resource "aws_cloudwatch_log_group" "event_handler" {
  name              = "/aws/lambda/${var.function_name}_${var.environment}"
  retention_in_days = 60
}
