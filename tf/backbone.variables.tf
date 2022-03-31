# container names
variable "auth-svc-name" {
  default = "dyce-auth-service"
  type = string
}

variable "data-svc-name" {
  default = "dyce-data-service"
  type = string
}

variable "user-svc-name" {
  default = "dyce-user-service"
  type = string
}

variable "wsgi-svc-name" {
  default = "dyce-wsgi-service"
  type = string
}

# service names
variable "auth-img-name" {
  default = "dyce-main_auth-svc"
  type = string
}

variable "data-img-name" {
  default = "dyce-main_data-svc"
  type = string
}

variable "user-img-name" {
  default = "dyce-main_user-svc"
  type = string
}

variable "wsgi-img-name" {
  default = "dyce-main_wsgi-svc"
  type = string
}

#ports
variable "auth-external-port" {
  default = 8090
  type = number
}

variable "auth-internal-port" {
  default = 8080
  type = number
}