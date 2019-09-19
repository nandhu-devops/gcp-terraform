resource "google_compute_forwarding_rule" "default" {
  name                  = "website-forwarding-rule"
  region                = var.region
  ip_protocol           = var.protocol
  ports                 = var.ports
  #all_ports 		= true
  load_balancing_scheme = "INTERNAL"
  backend_service       = google_compute_region_backend_service.default.self_link

  # all_ports             = true
  network    = var.network
  subnetwork = var.subnetwork
}

resource "google_compute_region_backend_service" "default" {
  name                            = "region-backend-service"
  region                          = var.region
  health_checks                   = [google_compute_health_check.default.self_link]
  connection_draining_timeout_sec = 10
  session_affinity                = "NONE"

  backend {
    description = "Instance group for internal-load-balancer test"
    group       = var.instancegroup
  }
}

resource "google_compute_health_check" "default" {
  name               = "health-check"
  check_interval_sec = 1
  timeout_sec        = 1

  tcp_health_check {
    port = "7617"
  }
}

