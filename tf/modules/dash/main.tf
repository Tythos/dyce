#images
resource "docker_image" "prometheus-img" {
  name = var.prometheus-img-name
}

resource "docker_image" "grafana-img" {
  name = var.grafana-img-name
}

resource "docker_image" "cadvisor-img" {
  name = var.cadvisor-img-name
}

# volumes
resource "docker_volume" "run" {
  name = "cadvisor-run"
}

resource "docker_volume" "sys" {
  name = "cadvisor-sys"
}

resource "docker_volume" "var-docker" {
  name = "cadvisor-docker"
}

resource "docker_container" "prometheus-svc" {
  image = docker_image.prometheus-img.name
  name = var.prometheus-svc-name
  restart = "on-failure"
  must_run = true

  ports {
    internal = var.prometheus-internal-port
    external = var.prometheus-external-port
  }
}

resource "docker_container" "grafana-svc" {
  image = docker_image.grafana-img.name
  name = var.grafana-svc-name
  restart = "on-failure"
  must_run = true

  ports {
    internal = var.grafana-internal-port
    external = var.grafana-external-port
  }
}

resource "docker_container" "cadvisor-svc" {
  image = docker_image.cadvisor-img.name
  name = var.cadvisor-svc-name
  restart = "on-failure"
  must_run = true

  ports {
    internal = var.cadvisor-internal-port
    external = var.cadvisor-external-port
  }

  volumes {
      volume_name = docker_volume.run.name
      container_path = "/var/run"
      read_only = true
  }

  volumes {
      volume_name = docker_volume.var-docker.name
      container_path = "/var/lib/docker"
      read_only = true
  }

  volumes {
      volume_name = docker_volume.sys.name
      container_path = "/sys"
      read_only = true
  }
}