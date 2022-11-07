variable "qualix_ip" {
    type = string
    #validation {
    #regex(...) fails if it cannot find a match
    #condition = can(regex("[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+", var.qualix_ip))
    #error_message = "QualiX IP Address must be a valid IP"
    #}
}

variable "protocol" {
  type = string
  #validation {
  #  condition = var.protocol == "rdp" || var.protocol == "ssh"
  #  error_message = "Invalid protocol type, only 'rdp' and 'ssh' are currently supported"
  #}
}

variable "connection_port" {
  type = number
}

variable "target_ip_address" {
  type = string
}

variable "target_username" {
  type = string
}

variable "target_password" {
  type = string
}
