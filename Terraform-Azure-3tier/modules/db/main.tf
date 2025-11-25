resource "azurerm_postgresql_flexible_server" "postgres" {
  name                = "${var.prefix}-pg"
  location            = var.location
  resource_group_name = var.rg_name
  sku_name            = "Standard_B1ms"
  version             = var.postgres_version

  delegated_subnet_id = var.subnet_id

  administrator_login          = "pgadmin"
  administrator_password       = var.admin_password

  storage_mb = 32768
}

output "postgres_fqdn" {
  value = azurerm_postgresql_flexible_server.postgres.fqdn
}
