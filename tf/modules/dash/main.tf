resource "docker_image" "prometheus-img" {
  name = var.prometheus-img-name
}

resource "docker_image" "grafana-img" {
  name = var.grafana-img-name
}

resource "docker_image" "cadvisor-img" {
  name = var.cadvisor-img-name
}

resource "docker_container" "prometheus-svc" {
  image = docker_image.prometheus-img.name
  name = var.prometheus-svc-name
  restart = "on-failure"
  must_run = true
}

resource "docker_container" "grafana-svc" {
  image = docker_image.grafana-img.name
  name = var.grafana-svc-name
  restart = "on-failure"
  must_run = true
}

resource "docker_container" "cadvisor-svc" {
  image = docker_image.cadvisor-img.name
  name = var.cadvisor-svc-name
  restart = "on-failure"
  must_run = true
}