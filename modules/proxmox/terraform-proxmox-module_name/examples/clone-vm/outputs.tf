output "node_name" {
  value       = module.proxmox_vms.vms
  description = "Informações das VMs criadas"
}

output "vm_details" {
  value = {
    for vm_key, vm in module.proxmox_vms.vms : vm_key => {
      id                 = vm.id
      name               = vm.name
      status             = vm.status
      ipv4_addresses     = vm.ipv4_addresses
      network_interfaces = vm.network_interfaces
    }
  }
  description = "Detalhes das VMs incluindo informações de rede"
}