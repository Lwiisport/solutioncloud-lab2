variable "image" {
  type        = string
  description = "Image to use"
}

variable "container_memory" {
  type        = number
  description = "container memory"
}

variable "privileged" {
  type        = bool
  default     = false
  description = "container privileged"
}

variable "number_container" {
  type        = number
  description = "number of container to spawn"
}

variable "port" {
  type        = number
  description = "Port to use to redirect the container"
}
