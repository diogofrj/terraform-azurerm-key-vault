module "labels" {
  source      = "../../modules/azure/labels"
  project     = "csh"
  environment = "dev"
  region      = "eastus2"
}

locals {
  permission_profiles = {
    admin = {
      key_permissions = [
        "Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "Purge"
      ]
      secret_permissions = [
        "Get", "List", "Set", "Delete", "Recover", "Backup", "Restore", "Purge"
      ]
      storage_permissions = [
        "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"
      ]
      certificate_permissions = [
        "Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"
      ]
    }
    read_only = {
      key_permissions = [
        "Get", "List"
      ]
      secret_permissions = [
        "Get", "List"
      ]
      storage_permissions = [
        "Get", "List"
      ]
      certificate_permissions = [
        "Get", "List"
      ]
    }
  }
}

module "key_vault" {
  #   source = "git::https://github.com/diogofrj/templates-tf-modules.git//examples/azure/aks?ref=v0.0.1"
  source              = "../../"
  create_resource_group = true
  resource_group_name = module.labels.resource_group_name
  location            = module.labels.region
  key_vault_name      = module.labels.key_vault_name
  sku_name = "standard"
  enabled_for_disk_encryption = false
  enabled_for_deployment = false
  enabled_for_template_deployment = false


  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  key_permissions         = local.permission_profiles.admin.key_permissions
  secret_permissions      = local.permission_profiles.admin.secret_permissions
  storage_permissions     = local.permission_profiles.admin.storage_permissions
  certificate_permissions = local.permission_profiles.admin.certificate_permissions
  
  object_ids = {
    "dfs" = "f2385779-db3e-4a32-b01f-1eae882084c5"
  }
  tags = {
    "environment" = "dev"
    "project" = "csh"
    "region" = "eastus2"
  }
}


