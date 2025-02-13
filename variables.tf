variable "create_resource_group" {
  description = "Indica se um grupo de recursos deve ser criado."
  type        = bool
}

variable "resource_group_name" {
  description = "Nome do grupo de recursos onde o Key Vault será criado."
  type        = string
}

variable "location" {
  description = "Localização geográfica onde o Key Vault será provisionado."
  type        = string
}

variable "key_vault_name" {
  description = "Nome do Key Vault a ser criado."
  type        = string
}

variable "tags" {
  description = "Tags a serem aplicadas ao Key Vault."
  type        = map(string)
}

variable "sku_name" {
  description = "Nome do SKU do Key Vault."
  type        = string
}

variable "enabled_for_disk_encryption" {
  description = "Indica se o Key Vault está habilitado para criptografia de disco."
  type        = bool
}

variable "enabled_for_deployment" {
  description = "Indica se o Key Vault está habilitado para implantação."
  type        = bool
}

variable "enabled_for_template_deployment" {
  description = "Indica se o Key Vault está habilitado para implantação de modelos."
  type        = bool
}

variable "soft_delete_retention_days" {
  description = "Número de dias para retenção de exclusão suave."
  type        = number
}

variable "purge_protection_enabled" {
  description = "Indica se a proteção contra exclusão permanente está habilitada."
  type        = bool
}

variable "key_permissions" {
  description = "Lista de permissões de chave para o Key Vault."
  type        = list(string)
}

variable "secret_permissions" {
  description = "Lista de permissões de segredo para o Key Vault."
  type        = list(string)
}

variable "storage_permissions" {
  description = "Lista de permissões de armazenamento para o Key Vault."
  type        = list(string)
}

variable "certificate_permissions" {
  description = "Lista de permissões de certificado para o Key Vault."
  type        = list(string)
}

variable "object_ids" {
  description = "Mapeamento de IDs de objetos com validação de UUID."
  type        = map(string)
  default     = {}
  validation {
    condition     = can([for id in values(var.object_ids) : regex("^[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}$", id)])
    error_message = "Cada object_id deve ser uma string UUID válida."
  }
}
