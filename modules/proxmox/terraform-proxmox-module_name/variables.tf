variable "endpoint" {
  type        = string
  description = "URL do endpoint Proxmox (ex: https://proxmox.example.com:8006)"
}

variable "api_token" {
  type        = string
  description = "Token de API do Proxmox no formato 'USER@REALM!TOKENID=UUID'"
  sensitive   = true
}

variable "node_name" {
  type        = string
  description = "Nome do nó Proxmox onde as VMs serão criadas"
}

variable "vm_template_id" {
  type        = number
  description = "ID da VM template que será clonada"
}

variable "vms" {
  type = map(object({
    memory     = number
    cores      = optional(number, 1)
    sockets    = optional(number, 1)
    disk_size  = optional(string, "102G")
    ip_config  = optional(object({
      ipv4_address = optional(string, "dhcp")
      ipv4_gateway = optional(string)
    }))
    dns_servers = optional(list(string), ["1.1.1.1", "8.8.8.8"])
    description = optional(string)
    tags        = optional(list(string), [])
  }))
  description = "Mapa de configurações das VMs a serem criadas"

  validation {
    condition     = alltrue([for vm in values(var.vms) : vm.memory >= 1024 && vm.memory % 128 == 0])
    error_message = "-----> A memória deve ser maior ou igual a 1024MB e ser múltiplo de 128MB. <-----"
  }
}
