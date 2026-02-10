variable "name" {}
variable "location" {}
variable "resource_group_name" {}

resource "azurerm_network_security_group" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
}

output "id" {
  value = azurerm_network_security_group.this.id
}
