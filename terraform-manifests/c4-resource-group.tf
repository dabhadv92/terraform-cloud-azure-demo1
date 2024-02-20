# Resource-1: Azure Resource Group
/*
resource "azurerm_resource_group" "myrg" {
  name = local.rg_name
  location = var.resoure_group_location
  tags = local.common_tags
}
*/

resource "azurerm_resource_group" "RGDemo" {
  name = var.RG2_name
  location = var.RG2_location
  tags = var.tags
  
}