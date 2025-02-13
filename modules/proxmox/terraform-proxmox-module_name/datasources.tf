# data "proxmox_virtual_environment_vm" "template_vm" {
#     node_name = var.node_name
#     vm_id = var.vm_template_id
# }

# output "template_vm" {
#   value = data.proxmox_virtual_environment_vm.template_vm
# }

data "proxmox_virtual_environment_node" "node" {
    node_name = var.node_name
}

