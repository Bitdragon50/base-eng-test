output "api_endpoint" {
  value = split(".",aws_apigatewayv2_stage.event_handler.invoke_url)
  sensitive = false
}