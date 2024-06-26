output "resourcegroupname" {
  value = azurerm_resource_group.RG.name
}

output "rgnamefunction" {
  value = join("",[var.prefix], [var.rgname])
}

output "vnetname" {
  value = azurerm_virtual_network.VNET.name
}

output "vnetfunction" {
  value = join("",[var.prefix], [var.vnetname])
}

output "publicip" {
  value = azurerm_windows_virtual_machine.VM.public_ip_address
}

output "private_ip" {
  value = azurerm_windows_virtual_machine.VM.private_ip_address
}

output "username" {
  value = lower(var.username)
}

output "password" {
  value     = azurerm_windows_virtual_machine.VM.admin_password
  sensitive = true
  description = "Output is the sensitive data"
}

