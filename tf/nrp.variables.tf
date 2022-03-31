# container names
variable "nrp-svc-name" {
  default = "dyce-nrp-service"
  type = string
}

# service names
variable "nrp-img-name" {
  default = "dyce-main_nrp-svc:1.0.0"
  type = string
}

variable "nrp-external-port" {
  default = 80
  type = number
}

variable "nrp-internal-port" {
  default = 80
  type = number
}