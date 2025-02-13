variable "storage_account_kind" {
  type        = string
  description = "Storage Account kind"
  validation {
    condition     = can(regex("BlobStorage|BlockBlobStorage|FileStorage|Storage|StorageV2", var.storage_account_kind))
    error_message = "--> Values allowed as Storage Account kind: BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2."
  }
}

variable storage_account_name {
    type = string
    default = "aaaaaaaaaaaaaaaaaaaaaaaa"
    validation {
      condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
      error_message = "--> Storage account name must start with letter or number, only contain letters, numbers and must be between 3 and 24 characters."
    }
}

variable vnet_name {
    type = string
    validation {
      condition     = can(regex("^[a-zA-Z0-9][a-zA-Z0-9-._]{2,64}[a-zA-Z0-9_]$", var.vnet_name))
      error_message = "--> Virtual network name must start with letter or number, contain letters, numbers, dashes, undescore and popints and must be between 2 and 64 characters."
    }
}