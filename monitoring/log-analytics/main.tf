variable "name" {}
variable "location" {}
variable "resource_group_name" {}

resource "azurerm_log_analytics_workspace" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

output "id" {
  value = azurerm_log_analytics_workspace.this.id
}
