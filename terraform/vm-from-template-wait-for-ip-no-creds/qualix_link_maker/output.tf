output http_link {
  value = "http://${var.qualix_ip}/remote/#/client/c/${var.protocol}${local.guid_stripped}?qtoken=${local.qtoken_encoded_modified}&hostname=${var.target_ip_address}&protocol=${var.protocol}&port=${var.connection_port}&username=${var.target_username}&password=${local.password_encoded}${local.extra_attributes}"
}

output https_link {
  value = "https://${var.qualix_ip}/remote/#/client/c/${var.protocol}${local.guid_stripped}?qtoken=${local.qtoken_encoded_modified}&hostname=${var.target_ip_address}&protocol=${var.protocol}&port=${var.connection_port}&username=${var.target_username}&password=${local.password_encoded}${local.extra_attributes}"
}
