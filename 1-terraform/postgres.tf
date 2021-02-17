resource "azurerm_resource_group" "postgresdb" {
  name     = var.resource_group
  location = var.azure_region
}

resource "azurerm_postgresql_server" "example" {
  name                = var.psqlserver_name
  location            = azurerm_resource_group.postgresdb.location
  resource_group_name = azurerm_resource_group.postgresdb.name

  administrator_login          = var.psqladmin_username
  administrator_login_password = "Passw0rd@123j"
}

