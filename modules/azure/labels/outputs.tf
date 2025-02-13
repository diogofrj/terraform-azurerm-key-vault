output "region" {
  description = "Região definida para os recursos"
  value       = var.region
}

output "db_subnet_name" {
  description = "Nome da sub-rede DB"
  value       = local.naming_convention.db_subnet_name
}

output "gateway_subnet_name" {
  description = "Nome da sub-rede Gateway"
  value       = local.naming_convention.gateway_subnet_name
}

output "dns_resolver_name" {
  description = "Nome do DNS Resolver"
  value       = local.naming_convention.dns_resolver_name
}

output "subscription_name" {
  description = "Nome da assinatura"
  value       = local.naming_convention.subscription_name
}

output "resource_group_name" {
  description = "Nome do grupo de recursos"
  value       = local.naming_convention.resource_group_name
}

output "storage_name" {
  description = "Nome do armazenamento"
  value       = local.naming_convention.storage_name
}

output "server_name" {
  description = "Nome do servidor"
  value       = local.naming_convention.server_name
}

output "aks_name" {
  description = "Nome do AKS"
  value       = local.naming_convention.aks_name
}

output "redis_cache_name" {
  description = "Nome do Redis Cache"
  value       = local.naming_convention.redis_cache_name
}

output "postgresql_flexible_srv_name" {
  description = "Nome do servidor PostgreSQL flexível"
  value       = local.naming_convention.postgresql_server_name
}

output "workspace_name" {
  description = "Nome do workspace"
  value       = local.naming_convention.workspace_name
}

output "key_vault_name" {
  description = "Nome do Key Vault"
  value       = local.naming_convention.key_vault_name
}

output "private_dns_zone_name" {
  description = "Nome da zona DNS privada"
  value       = local.naming_convention.private_dns_zone_name
}

output "private_dns_zone_blob" {
  description = "Nome da zona DNS privada para Blob"
  value       = local.naming_convention.private_dns_zone_blob
}

output "private_dns_zone_file" {
  description = "Nome da zona DNS privada para File"
  value       = local.naming_convention.private_dns_zone_file
}

output "private_dns_zone_sql" {
  description = "Nome da zona DNS privada para SQL"
  value       = local.naming_convention.private_dns_zone_sql
}

output "private_dns_zone_redis" {
  description = "Nome da zona DNS privada para Redis"
  value       = local.naming_convention.private_dns_zone_redis
}

output "private_dns_zone_vault" {
  description = "Nome da zona DNS privada para Vault"
  value       = local.naming_convention.private_dns_zone_vault
}

output "private_dns_zone_webapp" {
  description = "Nome da zona DNS privada para WebApp"
  value       = local.naming_convention.private_dns_zone_webapp
}

output "private_dns_zone_eventhub" {
  description = "Nome da zona DNS privada para EventHub"
  value       = local.naming_convention.private_dns_zone_eventhub
}

output "private_dns_zone_kubernetes" {
  description = "Nome da zona DNS privada para Kubernetes"
  value       = local.naming_convention.private_dns_zone_kubernetes
}

output "private_dns_zone_containerapps" {
  description = "Nome da zona DNS privada para Container Apps"
  value       = local.naming_convention.private_dns_zone_containerapps
}

output "private_dns_zone_containerregistry" {
  description = "Nome da zona DNS privada para Container Registry"
  value       = local.naming_convention.private_dns_zone_containerregistry
}

output "route_table" {
  description = "Nome da tabela de rotas"
  value       = local.naming_convention.route_table_name
}

output "nsg_name" {
  description = "Nome do NSG"
  value       = local.naming_convention.nsg_name
}

output "automation" {
  description = "Nome da automação"
  value       = local.naming_convention.automation_name
}

output "eventhub_namespace" {
  description = "Nome do namespace do EventHub"
  value       = local.naming_convention.event_hub_namespace
}

output "containerapp_name" {
  description = "Nome do Container App"
  value       = local.naming_convention.containerapp_name
}

output "containerapp_environment_name" {
  description = "Nome do ambiente do Container App"
  value       = local.naming_convention.containerapp_environment_name
}

output "vnet_name" {
  description = "Nome da VNet"
  value       = local.naming_convention.vnet_name
}

output "public_subnet_name" {
  description = "Nome da sub-rede pública"
  value       = local.naming_convention.public_subnet_name
}

output "private_subnet_name" {
  description = "Nome da sub-rede privada"
  value       = local.naming_convention.private_subnet_name
}
