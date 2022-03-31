module "backbone" {
  source              = "./modules/backbone"
  auth-svc-name = var.auth-svc-name
  data-svc-name = var.data-svc-name
  user-svc-name = var.user-svc-name
  wsgi-svc-name = var.wsgi-svc-name
  auth-img-name = var.auth-img-name
  data-img-name = var.data-img-name
  user-img-name = var.user-img-name
  wsgi-img-name = var.wsgi-img-name
  auth-ext-port = var.auth-external-port
  auth-int-port = var.auth-internal-port
}