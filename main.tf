resource "azurerm_resource_group" "rg" {
  name     = "vibhishanrg00982"
  location = "West Europe"
}


resource "azurerm_storage_account" "stg" {
  name                     = "anmswaapip20898"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}


