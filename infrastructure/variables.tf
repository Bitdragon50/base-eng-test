variable "region" {
  description = "The AWS region to deploy to."
  type        = string
  default     = "eu-west-2"
}

variable "package_type" {
  description = "The package type (Zip or Image) to use for this function."
  type        = string
  default     = "Zip"
}

variable "runtime" {
  description = "The identifier of the function's runtime."
  type        = string
  default     = "python3.10"
}

variable "publish" {
  description = "Whether to publish creation/change as new Lambda Function Version."
  type        = bool
  default     = true
}

variable "architectures" {
  description = "A list of Lambda function architectures (ARM64 or x86_64) to build and publish to"
  type        = list(string)
  default     = ["x86_64"]
}

variable "timeout" {
  description = "The amount of time your Lambda Function has to run in seconds."
  type        = number
  default     = 30
}

variable "function_name" {
  description = "The name of the Lambda Function."
  type        = string
  default     = "chatting_api"
}

variable "function_handler" {
  description = "The function entrypoint in your code."
  type        = string
  default     = "main.lambda_handler"
}

variable "powertools_service_name" {
  description = "Sets service name used for tracing namespace, metrics dimension and structured logging."
  type        = string
  default     = null
}

variable "log_level" {
  description = "The log level for the function."
  type        = string
  default     = "INFO"
}

variable "filepath" {
  description = "The path to the lambda function source code."
  type        = string
  default     = null
}

variable "environment" {
  description = "The SDLC environment we are deploying into."
  type        = string
  default     = "npe"
}

variable "git_branch" {
  description = "The git branch the function was built from."
  type        = string
  default     = "develop"
}
/*
variable "image_uri" {
  description = "The uri of the container image, set during build in github actions."
  type        = string
}


variable "function_bucket" {
  description = "The uri of the container image, set during build in github actions."
  type        = string

}
*/