output "api_endpoint" {
  value = replace(aws_apigatewayv2_api.event_handler.api_endpoint,"https://","")
}