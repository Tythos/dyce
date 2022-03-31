resource "docker_image" "auth-img" {
  name = var.auth-img-name
}

resource "docker_image" "data-img" {
  name = var.data-img-name
}

resource "docker_image" "user-img" {
  name = var.user-img-name
}

resource "docker_image" "wsgi-img" {
  name = var.wsgi-img-name
}

resource "docker_container" "auth-svc" {
  image = docker_image.auth-img.name
  name = var.auth-svc-name
  restart = "on-failure"
  must_run = true

  ports {
    internal = var.auth-int-port
    external = var.auth-ext-port
  }
}

resource "docker_container" "data-svc" {
  image = docker_image.data-img.name
  name = var.data-svc-name
  restart = "on-failure"
  must_run = true
}

resource "docker_container" "user-svc" {
  image = docker_image.user-img.name
  name = var.user-svc-name
  restart = "on-failure"
  must_run = true
}

resource "docker_container" "wsgi-svc" {
  image = docker_image.wsgi-img.name
  name = var.wsgi-svc-name
  restart = "on-failure"
  must_run = true
}