output "api_endpoint" {
  value = split(".",aws_apigatewayv2_api.event_handler.api_endpoint)
  sensitive = false
}