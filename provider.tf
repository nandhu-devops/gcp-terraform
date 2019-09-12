provider "google" {
  credentials = file("/home/komald/account.json")
  project     = var.project
  region      = var.region
}
