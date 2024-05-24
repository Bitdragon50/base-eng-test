output "api_endpoint" {
  value = aws_apigatewayv2_stage.event_handler.invoke_url
}