terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
resource "yandex_vpc_network" "module_network" {
  name       = "network-${var.env_name}"
}

resource "yandex_vpc_subnet" "module_subnet" {
  name        = "subnet-${var.env_name}"
  network_id  = yandex_vpc_network.module_network.id
  zone        = var.zone
  v4_cidr_blocks = [var.cidr]
}