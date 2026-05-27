variable "test" {
  type        = string
  default     = "test11"
  description = "khis is a test variable"
     }
variable "location" {
  type        = string
  default     = "centralindia"
  description = "location"
}

variable "test11" {
  type        = string
  default     = "test12"
  description = "this is a test variable"
}

variable "mCount" {
  type = string
  default = ["asd","asd1","asd2"]
}

resource "azurerm_resource_group" "name" {
  count = length(var.mCount)
  name = var.mCount[count.index]
  location = "centralindia"
}

resource "azurerm_resource_group" "test11" {
  name     = var.test11
  location = var.location
}

resource "azurerm_resource_group" "test1" {
  name     = var.test
  location = var.location
}
resource "azurerm_resource_group" "test2" {
  name     = "arunG"
  location = var.location
}

resource "azurerm_storage_account" "hello1" {
  name                     = "hellostore1001"
  resource_group_name      = azurerm_resource_group.test1.name
  location                 = azurerm_resource_group.test1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_container" "containertest1" {
  name                  = "mycontainertest1"
  storage_account_id = azurerm_storage_account.hello1.id
  container_access_type = "private"
}
