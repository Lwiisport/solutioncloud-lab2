output "container_names" {
  description = "Noms des conteneurs créés"
  value       = docker_container.clientweb-[*].name
}

output "external_ports" {
  description = "Ports exposés sur la machine hôte"
  value       = [for c in docker_container.clientweb : c.ports[0].external]
}