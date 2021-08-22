# PROVISIONING DOCKER CONTAINER ON AZURE CLOUD

# AZURE RESOURCE GROUP
resource "azurerm_resource_group" "tf_test" {
  name     = "tfmainrg"
  location = "East US"
}

# AZURE CONTAINER GROUP
resource "azurerm_container_group" "tfcg_test" {
  name                = "weatherapi"
  location            = azurerm_resource_group.tf_test.location
  resource_group_name = azurerm_resource_group.tf_test.name

  ip_address_type = "public"
  dns_name_label  = "rt2kwa"
  os_type         = "Linux"

  container {
    name   = "weatherapi"
    image  = "rt2k/weatherapi:${var.imagebuild}"
    cpu    = "1"
    memory = "1"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}

