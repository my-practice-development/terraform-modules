variable "name" {}
variable "resource_group_name" {}
variable "vnet_name" {}
variable "address_prefixes" { type = list(string) }

resource "azurerm_subnet" "this" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.address_prefixes
}

output "id" {
  value = azurerm_subnet.this.id
}
