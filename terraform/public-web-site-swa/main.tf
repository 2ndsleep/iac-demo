resource "azurerm_resource_group" "public_site" {
  name = "scrm-webpub-prd-1"
  location = "East US 2"
}

resource "azurerm_static_web_app" "public_site" {
  name = "scrm-webpub-prd-1"
  resource_group_name = azurerm_resource_group.public_site.name
  location = azurerm_resource_group.public_site.location
}

output "static_site_hostname" {
  value = azurerm_static_web_app.public_site.default_host_name
}