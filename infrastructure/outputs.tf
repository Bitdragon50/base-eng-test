output "api_endpoint" {
  value = aws_apigatewayv2_stage.event_handler.invoke_url #replace(aws_apigatewayv2_stage.event_handler.invoke_url,"***","eu-west-2")
  sensitive = false
}