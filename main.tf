resource "azurerm_resource_group" "DISKRG" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_virtual_network" "DISKRG" {
  name                = var.Vnetname
  location            = azurerm_resource_group.DISKRG.location
  resource_group_name = azurerm_resource_group.DISKRG.name
  address_space       = var.address_space


  subnet {
    name           = var.Subnetname[0]
    address_prefix = var.Subnetaddress[0]
  }

  subnet {
    name           = var.Subnetname[1]
    address_prefix = var.Subnetaddress[1]

  }
  subnet {
    name           = var.Subnetname[2]
    address_prefix = var.Subnetaddress[2]

  }

  tags = var.tags
}
