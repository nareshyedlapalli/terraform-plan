# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"  # Locally redundant storage; change to GRS for geo-redundant

  # Enable hierarchical namespace for ADLS Gen2 (optional for blob storage)
  is_hns_enabled = true

  # Enable public access (for simplicity; restrict in prod)
  allow_nested_items_to_be_public = false

  tags = {
    environment = "prd"
  }
}