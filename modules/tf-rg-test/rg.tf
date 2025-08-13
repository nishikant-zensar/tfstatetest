iterraform {
  backend "azurerm" {
    resource_group_name  = "tftest-rg"
    storage_account_name = "tfteststorageacc1"
    container_name       = "tfstate"
    key                  = "tfimport.terraform.tfstate" # Path to the state file in the container
    use_oidc_auth        = true
    use_azuread_auth     = true
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0"  
}

provider "azurerm" {
  features {}
}
# Create Network RG in Connectivity, Managemnet and AVD MG
# 1. Resource Group in zencislab 
resource "azurerm_resource_group" "conn" {
  provider = azurerm.zencislab
  name     = "ims-prd-conn-ne-rg-network"
  location = var.location
  tags = {
    Name        = "ims-prd-conn-ne-rg-network"
    Environment = "prd"
    DateCreated = "2025-08-01"
  }
  }

# 2. Resource Group in zencislab 
resource "azurerm_resource_group" "conn2" {
  provider = azurerm.zencislab
  name     = "ims-prd-conn-ne-rg-network2"
  location = var.location
  tags = {
    Name        = "ims-prd-conn-ne-rg-network2"
    Environment = "prd"
    DateCreated = "2025-08-01"
  }
  }
