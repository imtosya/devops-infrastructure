variable "nginx_version" {
  description = "Tag of the nginx image"
  type        = string
  default     = "1.27-alpine"
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "web"
}

variable "external_port" {
  description = "Host port for the web container"
  type        = number
  default     = 8081
}