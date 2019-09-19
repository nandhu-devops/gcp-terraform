module "papi-internal-predixy" {
  source     = "../../../modules/loadbalancers/papi-internal-predixy"
  region     = var.region
  protocol   = var.protocol
  ports      = var.ports
  network    = var.network
  subnetwork = var.subnetwork
  instancegroup      = data.terraform_remote_state.redis-proxy-internal.outputs.predixy_mig_self_link
}

