variable "image" {
  type        = string
  description = "Image to use"
}

variable "container_memory" {
  type        = number
  description = "container memory"

  validation {
    condition     = var.container_memory >= 64
    error_message = "La mémoire allouée au conteneur doit être d'au moins 64 Mo."
  }
}

variable "privileged" {
  type        = bool
  default     = false
  description = "container privileged"
}

variable "number_container" {
  type        = number
  description = "number of container to spawn"

  validation {
    condition     = var.number_container >= 1 && var.number_container <= 20
    error_message = "Le nombre de conteneurs doit être compris entre 1 et 20."
  }
}

variable "port" {
  type        = number
  description = "Port to use to redirect the container"

  validation {
    condition     = var.port >= 1024 && var.port <= 65535 && floor(var.port) == var.port
    error_message = "Le port doit être un entier compris entre 1024 et 65535 (les ports inférieurs à 1024 sont réservés au système)."
  }
}
