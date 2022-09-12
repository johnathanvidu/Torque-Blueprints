variable "hostname" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "datacenter_name" {
  type = string
  default = "IL Datacenter"
}

variable "datastore_name" {
  type = string
  default = "vmfs02-Do-Reservation"
}

variable "compute_cluster_name" {
  type = string
  default = "IL Main Cluster"
}

variable "compute_cluster_host" {
  type = string
  default = "esxi-01.qualisystems.local"
}

variable "wait_for_ip" {
  type = number
  default = 120
} 

variable "wait_for_net" {
  type = number
  default = 120
} 

variable "networks" {
  type        = string
  description = "Provided interfaces"
  default = "LAB/Do.(85)"
}

variable "virtual_machine_template_name" {
  type = string
}

variable "virtual_machine_name" {
  type = string
  default = "vm started by a script"
}

variable "virtual_machine_folder" {
  type = string
  default = "Do-Reservations-ESXI-01"
}

variable "linked_clone" {
  type = bool
  default = false
}