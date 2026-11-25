# Pulls the image
resource "docker_image" "app" {
  name = var.image
}

# Create a container
resource "docker_container" "clientweb" {
  count = var.number_container
  image = docker_image.image.image_id
  name  = "clientweb-${count.index}"
  memory = var.container_memory
  privileged = var.privileged
  ports {
    internal = 80
    external = var.port + count.index
  }
}