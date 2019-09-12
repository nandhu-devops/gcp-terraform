resource "google_compute_instance_group" "papi_group" {
  name        = "papi-internal-predixy"
  description = "Terraform papi instance group"
  zone        = "${var.region}-a"
  network     = var.network_name
  instances   = var.instances
}

resource "google_compute_backend_service" "default" {
  name          = "backend-service"
  protocol      = "TCP"
  timeout_sec   = 10

  health_checks = ["${google_compute_health_check.default.self_link}"]
}

resource "google_compute_target_pool" "default" {
  name = "instance-pool"

  instances = [
    "us-east4-a/myinstance1",
    "us-east4-b/myinstance2",
  ]

  health_checks = [
    "${google_compute_http_health_check.default.name}",
  ]
}


resource "google_compute_health_check" "default" {
  name               = "health-check"
  timeout_sec        = 1
  check_interval_sec = 1

  tcp_health_check {
    port = "443"
  }
}



