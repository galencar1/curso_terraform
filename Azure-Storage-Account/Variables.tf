variable "location" {
  description = "variável que indica a região onde os recursos serão criados." // Descrição da função da variável
  type        = string                                                         // Tipo da variável - sem aspas
  default     = "Brazil South"                                                 //indica a Região em que o recurso será inicializado
}

variable "account_tier" {
  description = "Tier da Storage account na Azure"
  type        = string
  default     = "Standard" // Verificar na documentação
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da Storage Account"
  type        = string
  default     = "LRS" // Verificar na documentação
}