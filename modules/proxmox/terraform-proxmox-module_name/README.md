# Módulo Terraform para Proxmox

![Proxmox Logo](https://www.proxmox.com/images/proxmox/Proxmox_logo_standard_hex_400px.png)

Este módulo Terraform facilita a criação e gerenciamento de máquinas virtuais (VMs) no Proxmox VE, seguindo as melhores práticas de infraestrutura como código.

## 📋 Requisitos

- **Terraform**: >= 1.9.0
- **Proxmox VE**: >= 7.0
- **Provider Proxmox**: >= 0.71.0

## 🚀 Como Utilizar

### 1. Configuração Básica

Crie um arquivo `main.tf` com a seguinte configuração:

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

### 2. Configuração do Provider

Configure o provider Proxmox no arquivo `providers.tf`:

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

### 3. Visualização dos Resultados

Crie um arquivo `outputs.tf` para visualizar as informações das VMs:

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

## 📚 Documentação Completa

### Variáveis de Entrada

| Nome | Descrição | Tipo | Padrão | Obrigatório |
|------|-----------|------|--------|:-----------:|
| `endpoint` | URL do endpoint Proxmox | `string` | - | Sim |
| `api_token` | Token de API do Proxmox | `string` | - | Sim |
| `node_name` | Nome do nó Proxmox | `string` | - | Sim |
| `vm_template_id` | ID da VM template | `number` | - | Sim |
| `vms` | Configurações das VMs | `map(object)` | - | Sim |

### Outputs

| Nome | Descrição |
|------|-----------|
| `vms` | Informações detalhadas das VMs criadas |

## 📂 Estrutura do Módulo

```
terraform-proxmox-module/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── README.md
└── examples/
    └── clone-vm/
        ├── main.tf
        ├── outputs.tf
        └── README.md
```

## 🔍 Exemplos

Exemplos completos de utilização podem ser encontrados no diretório [examples/clone-vm](./examples/clone-vm).

## 📖 Referências

- [Documentação Oficial do Provider Proxmox](https://registry.terraform.io/providers/bpg/proxmox/latest/docs)
- [Proxmox VE Documentation](https://pve.proxmox.com/wiki/Main_Page)

## 📜 Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).

## 🤝 Contribuição

Contribuições são bem-vindas! Por favor, leia nosso [guia de contribuição](CONTRIBUTING.md) antes de enviar pull requests.

## 📞 Metodo de autenticacao escolhido: `api token`

* link de referencia: [https://registry.terraform.io/providers/bpg/proxmox/latest/docs#api-token-authentication](https://registry.terraform.io/providers/bpg/proxmox/latest/docs#api-token-authentication)


Para suporte, por favor abra uma issue no [repositório do projeto](https://github.com/<seu-repositorio>/terraform-proxmox-module/issues).

```bash
root@proxmox:~# pveum user add terraform@pve
root@proxmox:~# pveum role add Terraform -privs "Datastore.Allocate Datastore.AllocateSpace Datastore.AllocateTemplate Datastore.Audit Pool.Allocate Sys.Audit Sys
.Console Sys.Modify SDN.Use VM.Allocate VM.Audit VM.Clone VM.Config.CDROM VM.Config.Cloudinit VM.Config.CPU VM.Config.Disk VM.Config.HWType VM.Config.Memory V
M.Config.Network VM.Config.Options VM.Migrate VM.Monitor VM.PowerMgmt User.Modify"
root@proxmox:~# pveum aclmod / -user terraform@pve -role Terraform
root@proxmox:~# pveum user token add terraform@pve provider --privsep=0
┌──────────────┬──────────────────────────────────────┐
│ key          │ value                                │
╞══════════════╪══════════════════════════════════════╡
│ full-tokenid │ terraform@pve!provider               │
├──────────────┼──────────────────────────────────────┤
│ info         │ {"privsep":"0"}                      │
├──────────────┼──────────────────────────────────────┤
│ value        │ a9384f40-d756-46f5-8e3a-60fe396dad11 │
└──────────────┴──────────────────────────────────────┘
```

Utilize variaveis de ambiente para armazenar o token e o endpoint do proxmox.

```bash
# API token must be in the format 'USER@REALM!TOKENID=UUID'
export PROXMOX_VE_API_TOKEN='terraform@pve!6215c36b-3cac-4335-b6d4-914420003088'
```





