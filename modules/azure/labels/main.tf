locals {
  # https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations
  naming_convention = {
    # General
    subscription_name   = lower("sub-${var.project}-${var.environment}-${var.region}")
    resource_group_name = lower("rg-${var.project}-${var.environment}-${var.region}")
    policy_name         = lower("policy-${var.project}-${var.environment}-${var.region}")
    api_management_name = lower("apim-${var.project}-${var.environment}-${var.region}")

    # Networking
    vnet_name                       = lower("vnet-${var.project}-${var.environment}-${var.region}")
    public_subnet_name              = lower("snet-${var.project}-${var.environment}-${var.region}-pub")
    private_subnet_name             = lower("snet-${var.project}-${var.environment}-${var.region}-priv")
    db_subnet_name                  = lower("snet-${var.project}-${var.environment}-${var.region}-db")
    gateway_subnet_name             = lower("snet-${var.project}-${var.environment}-${var.region}-gw")
    network_interface_name          = lower("nic-${var.project}-${var.environment}-${var.region}")
    public_ip_name                  = lower("pip-${var.project}-${var.environment}-${var.region}")
    load_balancer_internal_name     = lower("lbi-${var.project}-${var.environment}-${var.region}")
    load_balancer_external_name     = lower("lbe-${var.project}-${var.environment}-${var.region}")
    nsg_name                        = lower("nsg-${var.project}-${var.environment}-${var.region}")
    asg_name                        = lower("asg-${var.project}-${var.environment}-${var.region}")
    local_gateway_name              = lower("lgw-${var.project}-${var.environment}-${var.region}")
    virtual_gateway_name            = lower("vgw-${var.project}-${var.environment}-${var.region}")
    vpn_connection_name             = lower("cn-${var.project}-${var.environment}-${var.region}")
    application_gateway_name        = lower("agw-${var.project}-${var.environment}-${var.region}")
    route_table_name                = lower("rtb-${var.project}-${var.environment}-${var.region}")
    traffic_manager_name            = lower("traf-${var.project}-${var.environment}-${var.region}")
    private_endpoint_name           = lower("pe-${var.project}-${var.environment}-${var.region}")
    private_service_connection_name = lower("psc-${var.project}-${var.environment}-${var.region}")
    firewall_name                   = lower("fw-${var.project}-${var.environment}-${var.region}")
    dns_resolver_name               = lower("dnspr-${var.project}-${var.environment}-${var.region}")

    # Compute and Web
    server_name                   = lower("vm-${var.project}-${var.environment}-${var.region}")
    vmss_name                     = lower("vmss-${var.project}-${var.environment}-${var.region}")
    availability_set_name         = lower("avail-${var.project}-${var.environment}-${var.region}")
    vm_storage_account_name       = lower("stvm${var.project}${var.environment}${var.region}")
    arc_machine_name              = lower("arcm-${var.project}-${var.environment}-${var.region}")
    container_instance_name       = lower("aci-${var.project}-${var.environment}-${var.region}")
    aks_name                      = lower("aks-${var.project}-${var.environment}-${var.region}")
    service_fabric_name           = lower("sf-${var.project}-${var.environment}-${var.region}")
    app_service_env_name          = lower("ase-${var.project}-${var.environment}-${var.region}")
    app_service_plan_name         = lower("plan-${var.project}-${var.environment}-${var.region}")
    web_app_name                  = lower("app-${var.project}-${var.environment}-${var.region}")
    function_app_name             = lower("func-${var.project}-${var.environment}-${var.region}")
    cloud_service_name            = lower("cld-${var.project}-${var.environment}-${var.region}")
    notification_hub_name         = lower("ntf-${var.project}-${var.environment}-${var.region}")
    notification_hub_ns_name      = lower("ntfns-${var.project}-${var.environment}-${var.region}")
    containerapp_name             = lower("ca-${var.project}-${var.environment}-${var.region}")
    containerapp_environment_name = lower("cae-${var.project}-${var.environment}-${var.region}")

    # Databases
    sql_server_name        = lower("sql-${var.project}-${var.environment}-${var.region}")
    sql_database_name      = lower("sqldb-${var.project}-${var.environment}-${var.region}")
    cosmos_db_name         = lower("cosmos-${var.project}-${var.environment}-${var.region}")
    redis_cache_name       = lower("redis-${var.project}-${var.environment}-${var.region}")
    mysql_server_name      = lower("mysql-${var.project}-${var.environment}-${var.region}")
    postgresql_server_name = lower("psql-${var.project}-${var.environment}-${var.region}")
    synapse_name           = lower("syn-${var.project}-${var.environment}-${var.region}")
    sql_stretch_db_name    = lower("sqlstrdb-${var.project}-${var.environment}-${var.region}")
    sql_mi_name            = lower("sqlmi-${var.project}-${var.environment}-${var.region}")

    # Storage
    storage_name            = lower("st${var.project}${var.environment}${var.region}")
    storsimple_name         = lower("ssimp-${var.project}-${var.environment}-${var.region}")
    storage_encryption_name = lower("smek-${var.project}-${var.environment}-${var.region}")

    # AI + Machine Learning
    cognitive_search_name  = lower("srch-${var.project}-${var.environment}-${var.region}")
    cognitive_service_name = lower("cog-${var.project}-${var.environment}-${var.region}")
    ml_workspace_name      = lower("mlw-${var.project}-${var.environment}-${var.region}")

    # Analytics and IoT
    analysis_service_name    = lower("as-${var.project}-${var.environment}-${var.region}")
    databricks_name          = lower("dbw-${var.project}-${var.environment}-${var.region}")
    stream_analytics_name    = lower("asa-${var.project}-${var.environment}-${var.region}")
    data_factory_name        = lower("adf-${var.project}-${var.environment}-${var.region}")
    data_lake_store_name     = lower("dls-${var.project}-${var.environment}-${var.region}")
    data_lake_analytics_name = lower("dla-${var.project}-${var.environment}-${var.region}")
    event_hub_name           = lower("evh-${var.project}-${var.environment}-${var.region}")
    event_hub_namespace      = lower("ehn-${var.project}-${var.environment}-${var.region}")
    hadoop_cluster_name      = lower("hadoop-${var.project}-${var.environment}-${var.region}")
    hbase_cluster_name       = lower("hbase-${var.project}-${var.environment}-${var.region}")
    kafka_cluster_name       = lower("kafka-${var.project}-${var.environment}-${var.region}")
    spark_cluster_name       = lower("spark-${var.project}-${var.environment}-${var.region}")
    storm_cluster_name       = lower("storm-${var.project}-${var.environment}-${var.region}")
    ml_service_name          = lower("mls-${var.project}-${var.environment}-${var.region}")
    iot_hub_name             = lower("iot-${var.project}-${var.environment}-${var.region}")

    # Integration
    logic_app_name    = lower("logic-${var.project}-${var.environment}-${var.region}")
    service_bus_name  = lower("sb-${var.project}-${var.environment}-${var.region}")
    service_bus_queue = lower("sbq-${var.project}-${var.environment}-${var.region}")
    service_bus_topic = lower("sbt-${var.project}-${var.environment}-${var.region}")
    automation_name   = lower("aa-${var.project}-${var.environment}-${var.region}")

    # Management and Governance
    blueprint_name      = lower("bp-${var.project}-${var.environment}-${var.region}")
    key_vault_name      = lower("kv-${var.project}-${var.environment}-${var.region}")
    key_vault_key_name  = lower("kvk-${var.project}-${var.environment}-${var.region}")
    workspace_name      = lower("log-${var.project}-${var.environment}-${var.region}")
    app_insights_name   = lower("appi-${var.project}-${var.environment}-${var.region}")
    recovery_vault_name = lower("rsv-${var.project}-${var.environment}-${var.region}")

    # Migration
    migrate_project_name = lower("migr-${var.project}-${var.environment}-${var.region}")
    db_migration_name    = lower("dms-${var.project}-${var.environment}-${var.region}")

    # DNS Zones
    private_dns_zone_name              = lower("privatelink.postgres.database.azure.com")
    private_dns_zone_blob              = lower("privatelink.blob.core.windows.net")
    private_dns_zone_file              = lower("privatelink.file.core.windows.net")
    private_dns_zone_sql               = lower("privatelink.database.windows.net")
    private_dns_zone_redis             = lower("privatelink.redis.cache.windows.net")
    private_dns_zone_vault             = lower("privatelink.vaultcore.azure.net")
    private_dns_zone_webapp            = lower("privatelink.azurewebsites.net")
    private_dns_zone_eventhub          = lower("privatelink.servicebus.windows.net")
    private_dns_zone_kubernetes        = lower("privatelink.${var.region}.azmk8s.io")
    private_dns_zone_containerapps     = lower("privatelink.${var.region}.azurecontainerapps.io")
    private_dns_zone_containerregistry = lower("privatelink.${var.region}.data.azurecr.io")
  }
}
