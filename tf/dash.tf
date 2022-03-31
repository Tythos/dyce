module "dash" {
  source        = "./modules/dash"
  cadvisor-svc-name = var.cadvisor-svc-name
  prometheus-svc-name = var.prometheus-svc-name
  grafana-svc-name = var.grafana-svc-name
  cadvisor-img-name = var.cadvisor-img-name
  prometheus-img-name = var.prometheus-img-name
  grafana-img-name = var.grafana-img-name
  cadvisor-external-port = var.cadvisor-external-port
  cadvisor-internal-port = var.cadvisor-internal-port
  prometheus-external-port = var.prometheus-external-port
  prometheus-internal-port = var.prometheus-internal-port
  grafana-external-port = var.grafana-external-port
  grafana-internal-port = var.grafana-internal-port
}