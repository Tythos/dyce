resource "docker_image" "nrp-img" {
  name = var.nrp-img-name
}

resource "docker_container" "nrp-svc" {
  image = docker_image.nrp-img.name
  name = var.nrp-svc-name
  restart = "on-failure"
  must_run = true

  ports {
    internal = var.nrp-internal-port
    external = var.nrp-external-port
  }
}
