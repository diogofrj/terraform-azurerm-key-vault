module "labels" {
  #source = "git::https://github.com/diogofrj/templates-tf-modules.git//examples/azure/labels?ref=v0.0.1"
  source       = "../"
}

















output "naming_convention" {
  description = "Map of naming conventions"
  value = {
    region                            = module.labels.region
    db_subnet_name                    = module.labels.db_subnet_name
    gateway_subnet_name               = module.labels.gateway_subnet_name
    dns_resolver_name                 = module.labels.dns_resolver_name
    subscription_name                 = module.labels.subscription_name
    resource_group_name              = module.labels.resource_group_name
    storage_name                     = module.labels.storage_name
    server_name                      = module.labels.server_name
    aks_name                         = module.labels.aks_name
    redis_cache_name                 = module.labels.redis_cache_name
    postgresql_flexible_srv_name     = module.labels.postgresql_flexible_srv_name
    workspace_name                   = module.labels.workspace_name
    key_vault_name                   = module.labels.key_vault_name
    private_dns_zone_name            = module.labels.private_dns_zone_name
    private_dns_zone_blob            = module.labels.private_dns_zone_blob
    private_dns_zone_file            = module.labels.private_dns_zone_file
    private_dns_zone_sql             = module.labels.private_dns_zone_sql
    private_dns_zone_redis           = module.labels.private_dns_zone_redis
    private_dns_zone_vault           = module.labels.private_dns_zone_vault
    private_dns_zone_webapp          = module.labels.private_dns_zone_webapp
    private_dns_zone_eventhub        = module.labels.private_dns_zone_eventhub
    private_dns_zone_kubernetes      = module.labels.private_dns_zone_kubernetes
    private_dns_zone_containerapps   = module.labels.private_dns_zone_containerapps
    private_dns_zone_containerregistry = module.labels.private_dns_zone_containerregistry
    route_table                      = module.labels.route_table
    nsg_name                         = module.labels.nsg_name
    automation                       = module.labels.automation
    eventhub_namespace               = module.labels.eventhub_namespace
    containerapp_name                = module.labels.containerapp_name
    containerapp_environment_name    = module.labels.containerapp_environment_name
    vnet_name                        = module.labels.vnet_name
    public_subnet_name               = module.labels.public_subnet_name
    private_subnet_name              = module.labels.private_subnet_name
  }
}