resource "proxmox_virtual_environment_vm" "vms" {
  for_each = var.vms
  
  name        = each.key
  node_name   = var.node_name
  description = each.value.description
  tags        = each.value.tags

  clone {
    vm_id = var.vm_template_id
    full  = true
  }

  agent {
    enabled = true
  }

  stop_on_destroy = true

  cpu {
    cores   = each.value.cores
    sockets = each.value.sockets
    type    = "x86-64-v2-AES"
    numa    = true
  }

  memory {
    dedicated = each.value.memory
    
  }

  initialization {
    dns {
      servers = each.value.dns_servers != null ? each.value.dns_servers : ["1.1.1.1", "8.8.8.8"]
    }

    ip_config {
      ipv4 {
        address = each.value.ip_config != null ? each.value.ip_config.ipv4_address : "dhcp"
        gateway = each.value.ip_config != null ? each.value.ip_config.ipv4_gateway : null
      }
    }
  }

  lifecycle {
  }
}

