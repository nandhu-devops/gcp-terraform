terraform {
  backend "gcs" {
    credentials = "/home/komald/account.json"
    bucket      = "mist-tf-state-use4"
    prefix      = "predixy-internal-nlb"
  }
}

