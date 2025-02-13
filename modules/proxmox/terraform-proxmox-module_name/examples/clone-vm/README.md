# Módulo Terraform para Proxmox

Este módulo facilita a criação e gerenciamento de máquinas virtuais (VMs) no Proxmox VE através do Terraform.

## Requisitos

- Terraform >= 1.9.0
- Proxmox VE >= 7.0
- Provider Proxmox >= 0.71.0

## Como utilizar

### 1. Configuração do Provider

Primeiro, configure o provider Proxmox no seu arquivo `providers.tf`:

```hcl
provider "proxmox" {
  endpoint = var.endpoint
  api_token = var.api_token
  insecure  = true
  ssh {
    agent    = true
    username = "terraform"
  }
}
```

### 2. Configuração do Módulo

Crie um arquivo `main.tf` com a configuração do módulo:

```hcl
module "proxmox_vms" {
  source = "git::https://github.com/<seu-repositorio>/terraform-proxmox-module.git"

  endpoint    = "https://192.168.31.180:8006/"
  api_token   = "terraform@pve!provider=a9384f40-d756-46f5-8e3a-60fe396dad11"
  node_name   = "bee"
  vm_template_id = 9002

  vms = {
    "vm-1" = {
      memory = 768
      cores  = 1
      tags   = ["prod", "web"]
      description = "Servidor Web"
    }
    "vm-2" = {
      memory = 1024
      cores  = 2
      ip_config = {
        ipv4_address = "192.168.1.100/24"
        ipv4_gateway = "192.168.1.1"
      }
      description = "Servidor de Aplicação"
      tags = ["prod", "app"]
    }
  }
}
```

### 3. Outputs

Para visualizar as informações das VMs criadas, crie um arquivo `outputs.tf`:

```hcl
output "vm_details" {
  value = module.proxmox_vms.vms
  description = "Detalhes das VMs criadas"
}
```

### 4. Execução

Para aplicar a configuração:

```bash
terraform init
terraform apply
```

## Variáveis de Entrada

| Nome | Descrição | Tipo | Padrão | Obrigatório |
|------|-----------|------|--------|:-----------:|
| endpoint | URL do endpoint Proxmox | string | - | Sim |
| api_token | Token de API do Proxmox | string | - | Sim |
| node_name | Nome do nó Proxmox | string | - | Sim |
| vm_template_id | ID da VM template | number | - | Sim |
| vms | Configurações das VMs | map(object) | - | Sim |

## Outputs

| Nome | Descrição |
|------|-----------|
| vms | Informações detalhadas das VMs criadas |

## Exemplo Completo

Um exemplo completo de utilização pode ser encontrado no diretório [examples/clone-vm](./examples/clone-vm).

## Referências

- [Documentação Oficial do Provider Proxmox](https://registry.terraform.io/providers/bpg/proxmox/latest/docs)
- [Proxmox VE Documentation](https://pve.proxmox.com/wiki/Main_Page)

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).