resource "azurerm_resource_group" "rg" {
  name     = "anmswarg"
  location = "West Europe"
}


resource "azurerm_storage_account" "stg" {
  name                     = "anmswaapipe"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_account" "stg2" {
  name                     = "anmswaaaapipe"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
