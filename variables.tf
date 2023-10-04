variable "resource_group_name" {
  type = string
  description = "Resource Group Name"
  default = ""
}

variable "location" {
  type = string
  description = "The location of the deployment"
  default = ""
}

variable "kv_name" {
    type = string
    description = "name of the keyvault"
    default = ""
}

variable "enabled_for_disk_encryption" {
  type        = bool
  description = "enable disk encryption"
  default     = true
}

variable "soft_delete_retention_days" {
  description = "The number of days that item soft_delete_retention"
  type        = number
  default     = null
}

variable "purge_protection_enabled" {
  type        = bool
  description = "purge protection enable option"
  default     = false
}

variable "sku_name" {
  type        = string
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and premium"
  default     = ""
}


variable "user_key_permissions" {
  type        = list(string)
  description = "List of key permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey."
  default     = []
}

variable "user_secret_permissions" {
  type        = list(string)
  description = "List of secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set"
  default     = []
}

variable "user_storage_permissions" {
  type        = list(string)
  description = "List of storage permissions, must be one or more from the following: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas and update."
  default     = []
}

