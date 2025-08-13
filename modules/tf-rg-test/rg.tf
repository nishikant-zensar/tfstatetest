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
resource "azurerm_resource_group" "conn1" {
  provider = azurerm.zencislab
  name     = "rg-conn1"
  location = var.location
  tags = {
    Name        = "rg-conn1"
    Environment = "prd"
    DateCreated = "2025-08-01"
  }
  }

# 2. Resource Group in zencislab 
resource "azurerm_resource_group" "conn2" {
  provider = azurerm.zencislab
  name     = "rg-conn2"
  location = var.location
  tags = {
    Name        = "rg-conn2"
    Environment = "prd"
    DateCreated = "2025-08-01"
  }
  }

# 3. Resource Group in zencislab - Existing
resource "azurerm_resource_group" "conn3" {
  provider = azurerm.zencislab
  name     = "rg-conn3"
  location = var.location
  tags = {
    Name        = "rg-conn3"
    Environment = "prd"
    DateCreated = "2025-08-01"
  }
  }

