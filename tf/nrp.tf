module "nrp" {
  source        = "./modules/nrp"
  nrp-svc-name = var.nrp-svc-name
  nrp-img-name = var.nrp-img-name
  nrp-external-port = var.nrp-external-port
  nrp-internal-port = var.nrp-internal-port
  depends_on = [
    module.backbone,
    module.dash
  ]
}