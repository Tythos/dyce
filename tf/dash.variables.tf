# container names
variable "cadvisor-svc-name" {
  default = "dyce-cadvisor-service"
  type = string
}

variable "prometheus-svc-name" {
  default = "dyce-prometheus-service"
  type = string
}

variable "grafana-svc-name" {
  default = "dyce-grafana-service"
  type = string
}

# service names
variable "cadvisor-img-name" {
  default = "dyce-main_cadvisor-svc"
  type = string
}

variable "prometheus-img-name" {
  default = "dyce-main_prometheus-svc:1.0.0"
  type = string
}

variable "grafana-img-name" {
  default = "dyce-main_grafana-svc:1.0.0"
  type = string
}