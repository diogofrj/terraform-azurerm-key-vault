variable "project" {
  description = "Nome do projeto"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Ambiente (dev, prod, etc.)"
  type        = string
  default     = ""
}

variable "region" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = ""
}

variable "organization" {
  description = "Nome da organização"
  type        = string
  default     = ""
}

variable "CC" {
  description = "Código de custo"
  type        = string
  default     = ""
}

variable "CC_OWNER" {
  description = "Proprietário do código de custo"
  type        = string
  default     = ""
}

variable "Vertical" {
  description = "Vertical do projeto"
  type        = string
  default     = ""
}