variable "region" { 
 default = "us-east4"
}

variable "project" {
  default = "mist-gcp-infra"
}

 
variable "network" {
 default = "mist-network"
}

variable "subnetwork" {
 default = "predixy-prod-network"

}

variable "protocol" {
 default = "TCP"

}

variable "instancegroup" {
 default = ""
}
variable "ports" {
 default = ["7617"]
}



