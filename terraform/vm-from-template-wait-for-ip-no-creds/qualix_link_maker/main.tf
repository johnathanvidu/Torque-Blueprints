terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
    time = {
      source = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

#provider "time" {}

#provider "random" {}

resource "random_uuid" "resource_uuid" {}

resource "time_static" "current_time_static" {}

locals {
  guid                    = random_uuid.resource_uuid.result
  guid_stripped           = replace(local.guid, "-", "")
  curr_time_secs          = time_static.current_time_static.unix
  qtoken_clean            = "${local.guid_stripped},${local.curr_time_secs * 10000000}"
  qtoken_encoded          = base64encode(local.qtoken_clean)
  qtoken_encoded_modified = replace(replace(replace(local.qtoken_encoded,"+","-"),"/","_"),"=","~")
  password_encoded        = replace(base64encode(var.target_password),"=","~")
  extra_attributes        = var.protocol == "rdp" ? "&security=any&ignore-cert=true" : ""
}