data "terraform_remote_state" "vpc" {
  backend = "gcs"
  config = {
    credentials = "/home/komald/account.json"
    bucket      = "mist-tf-state-use4"
    prefix      = "vpc"
  }
}

data "terraform_remote_state" "redis-proxy-internal" {
  backend = "gcs"
  config = {
    credentials = "/home/komald/account.json"
    bucket      = "mist-tf-state-use4"
    prefix      = "redis-proxy-internal"
  }
}

