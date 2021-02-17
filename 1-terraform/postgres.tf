var.resource_groupresource "azurerm_resource_group" "postgresdb" {
  name     = var.resource_group
  location = var.azure_region
}

resource "azurerm_postgresql_server" "example" {
  name                = var.psqlserver_name
  location            = azurerm_resource_group.postgresdb.location
  resource_group_name = azurerm_resource_group.postgresdb.name

  administrator_login          = var.psqladmin_username
  administrator_login_password = "Passw0rd@123j"

  sku_name   = "GP_Gen5_4"
  version    = "9.6"
  storage_mb = 640000

  backup_retention_days        = 7
  geo_redundant_backup_enabled = true
  auto_grow_enabled            = true

  public_network_access_enabled    = false
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}

