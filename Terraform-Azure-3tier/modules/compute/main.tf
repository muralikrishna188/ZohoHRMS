resource "azurerm_linux_virtual_machine_scale_set" "vmss" {
  name                = "${var.prefix}-vmss"
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.vm_size
  instances           = var.instance_count

  admin_username = var.admin_username
  admin_password = var.admin_password

  network_interface {
    name    = "nic"
    primary = true

    ip_configuration {
      name      = "ipconfig"
      subnet_id = var.subnet_id
    }
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

output "vmss_id" {
  value = azurerm_linux_virtual_machine_scale_set.vmss.id
}
