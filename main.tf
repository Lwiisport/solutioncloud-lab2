provider "docker" {}

# Pulls the image
resource "docker_image" "var.image" {
  name = image
}

# Create a container
resource "docker_container" "clientweb" {
  count = var.number_container
  image = docker_image.image.image_id
  name  = "clientweb-${count.index}"
  memory = var.container_memory
  priviledged = var.priviledged
  ports {
    internal = 80
    external = var.port + count_index
  }
}