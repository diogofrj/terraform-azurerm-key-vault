module "proxmox_vms" {
  #   source = "git::https://github.com/<OWNER>/<REPO>.git/?ref=v0.0.1"
  source   = "../../"
  endpoint = "https://192.168.31.180:8006/"
  # api_token = var.proxmox_api_token
  api_token      = "terraform@pve!provider=a9384f40-d756-46f5-8e3a-60fe396dad11"
  node_name      = "bee"
  vm_template_id = 9002

  vms = {
    "vm-1" = {
      memory      = 2048
      cores       = 1
      tags        = ["prod", "web"]
      description = "Servidor Web"
    }
    "vm-2" = {
      memory = 1024
      cores  = 2
      # ip_config = {
      #   ipv4_address = "192.168.31.100/24"
      #   ipv4_gateway = "192.168.31.1"
      # }
      description = "Servidor de Aplicação"
      tags        = ["prod", "app"]
    }
  }
}


