// Primeiro  -Criar um resource group
resource "azurerm_resource_group" "first_resource_group" {
  name = "" // Vazio - Por enquanto
  location = var.location // Será chamado através de uma variável do arquivo "Variables.tf"
  tags = "" // Vazio - Por enquanto
}

// Segundo - Criar um storage Account
resource "azurerm_storage_account" "first_storage_account" {
  name = "" // Vazio - Por enquanto
  resource_group_name = "" // Vazio - Por enquanto
  location = var.location // Será chamado através de uma variável do arquivo "Variables.tf"
  account_tier = "" // Vazio - Por enquanto
  account_replication_type = "" // Vazio - Por enquanto

  tags = "" // Vazio - Por enquanto
}

resource "azurerm_storage_container" "first_container" {
  name = "" // Vazio - Por enquanto
  storage_account_name = ""  // Vazio - Por enquanto
}