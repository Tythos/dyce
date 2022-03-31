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
  default = "dyce-main_cadvisor-svc:1.0.0"
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

# ports
variable "cadvisor-internal-port" {
  default = 8080
  type = number
}

variable "cadvisor-external-port" {
  default = 8080
  type = number
}

variable "prometheus-internal-port" {
  default = 9090
  type = number
}

variable "prometheus-external-port" {
  default = 9090
  type = number
}

variable "grafana-internal-port" {
  default = 3000
  type = number
}

variable "grafana-external-port" {
  default = 3000
  type = number
}