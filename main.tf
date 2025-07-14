resource "azurerm_resource_group" "rg" {
  name     = "zhingat-rg"
  location = "West Europe"
}


resource "azurerm_storage_account" "stg" {
  name                     = "pushpa-pipeline"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_account" "stg2" {
  name                     = "rajjoo-pipeline"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
