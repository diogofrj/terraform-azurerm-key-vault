data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "rgrp" {
  count = var.create_resource_group == false ? 1 : 0
  name  = var.resource_group_name
}

resource "azurerm_resource_group" "rg" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_key_vault" "_" {
  name                        = var.key_vault_name
  location                    = var.create_resource_group ? azurerm_resource_group.rg[0].location : data.azurerm_resource_group.rgrp[0].location
  resource_group_name         = var.create_resource_group ? azurerm_resource_group.rg[0].name : data.azurerm_resource_group.rgrp[0].name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  enabled_for_deployment      = var.enabled_for_deployment
  enabled_for_template_deployment = var.enabled_for_template_deployment
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  sku_name                    = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions         = flatten(var.key_permissions)
    secret_permissions      = flatten(var.secret_permissions)
    storage_permissions     = flatten(var.storage_permissions)
    certificate_permissions = flatten(var.certificate_permissions)

  }
}


resource "azurerm_key_vault_access_policy" "users" {
  for_each = try(var.object_ids, {})
  key_vault_id = azurerm_key_vault._.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = each.value

  key_permissions = [
    "Get",
    "List",
    "Update",
    "Create",
    "Import",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "GetRotationPolicy",
    "SetRotationPolicy",
    "Rotate",
    "Encrypt",
    "Decrypt",
    "UnwrapKey",
    "WrapKey",
    "Verify",
    "Sign",
    "Purge",
    "Release"
  ]
  secret_permissions = [
    "Get",
    "List",
    "Set",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "Purge"
  ]
  certificate_permissions = [
    "Get",
    "List",
    "Update",
    "Create",
    "Import",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "ManageContacts",
    "ManageIssuers",
    "GetIssuers",
    "ListIssuers",
    "SetIssuers",
    "DeleteIssuers",
    "Purge"
  ]
}
