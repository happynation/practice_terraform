resource "docker_image" "docker_image" {
  name = "ghost:latest"
}
#start the container
resource "docker_container" "container_id" {
    name = "blog"
    image = "${docker_image.image_id.latest}"
}