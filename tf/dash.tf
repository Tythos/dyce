module "dash" {
  source        = "./modules/dash"
  cadvisor-svc-name = var.cadvisor-svc-name
  prometheus-svc-name = var.prometheus-svc-name
  grafana-svc-name = var.grafana-svc-name
  cadvisor-img-name = var.cadvisor-img-name
  prometheus-img-name = var.prometheus-img-name
  grafana-img-name = var.grafana-img-name
}