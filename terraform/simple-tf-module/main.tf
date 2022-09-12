terraform {
  required_version = ">= 0.13"
//  backend "local" {
//    path    = "mybackend/terraform.tfstate"
//  }
}
// test

resource "null_resource" "task_log" {
  provisioner "local-exec" {
    command = "echo task_log. variables: rabbit_endpoint=bla."
  }
}

resource "null_resource" "task_long" {
  provisioner "local-exec" {
    command = "echo \"long task start\" && sleep 5 && echo \"long task end\""
  }
}

locals {
  key1 = "somekey"
}
