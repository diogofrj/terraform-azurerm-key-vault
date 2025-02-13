output "vms" {
  description = "Informações detalhadas de todas as VMs criadas"
  value = {
    for vm_key, vm in proxmox_virtual_environment_vm.vms : vm_key => {
      id                 = vm.id
      name               = vm.name
      node_name          = vm.node_name
      vm_id              = vm.vm_id
      status             = vm.started
      ipv4_addresses     = vm.ipv4_addresses
      network_interfaces = vm.network_interface_names
    }
  }
}