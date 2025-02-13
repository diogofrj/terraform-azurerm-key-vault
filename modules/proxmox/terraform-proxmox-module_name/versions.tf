terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.71.0"
    }
  }
  required_version = ">= 1.9.0, <= 2.0.0"
}