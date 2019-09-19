variable "region" {
  default = ""
}

variable "network" {
  description = "network to be assigned for backend service"
  default     = ""
}

variable "subnetwork" {
  description = "subnetwork to be assigned for frontend config"
  default     = ""
}

variable "protocol" {
  description = "tcp network internal"
  default     = ""
}

variable "ports" {
  default = ["7617"]
}

variable "instancegroup" {
  default = ""
}
