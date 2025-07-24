resource "null_resource" "ping_test" {
  provisioner "remote-exec" {
    inline = [
      "ping -c 4 ${azurerm_network_interface.nic[1].private_ip_address}"
    ]

    connection {
      type     = "ssh"
      user     = var.admin_username
      password = var.admin_password
      host     = azurerm_public_ip.public_ip[0].ip_address
    }
  }

  depends_on = [azurerm_linux_virtual_machine.vm]
}
