// Primeiro  -Criar um resource group
resource "azurerm_resource_group" "first_resource_group" {
  name = "storage_account_resource_group" // Nome do resource group para ser referenciado em outros blocos
  location = var.location // Será chamado através de uma variável do arquivo "Variables.tf"
  tags = "" // Vazio - Por enquanto
}

// Segundo - Criar um storage Account
resource "azurerm_storage_account" "first_storage_account" {
  name = "gabrielalencarstorageaccount" // Nome da Storage Account
  resource_group_name = azurerm_resource_group.first_resource_group.name // Referência ao Resource Group
  location = var.location // Será chamado através de uma variável do arquivo "Variables.tf"
  account_tier = var.account_tier // Será chamado através de uma variável do arquivo "Variables.tf"
  account_replication_type = var.account_replication_type // Será chamado através de uma variável do arquivo "Variables.tf"

  tags = "" // Vazio - Por enquanto
}

resource "azurerm_storage_container" "first_container" {
  name = "" // Vazio - Por enquanto
  storage_account_name = azurerm_storage_account.first_storage_account.name  // Referencia da storage account
}