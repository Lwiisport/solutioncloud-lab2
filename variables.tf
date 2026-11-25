variable "image" {
  type        = string
  description = "Image to use"
}

variable "container_memory" {
  type        = number
  description = "container memory"
}

variable "priviledged" {
  type        = bool
  default     = false
  description = "container priviledged"
}

variable "number_container" {
  type        = number
  description = "number of container to spawn"
}

variable "port" {
  type        = number
  description = "Port to use to redirect the container"
}
