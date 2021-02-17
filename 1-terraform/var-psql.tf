variable "azure_region" {
  type    = string
  default = "eastus"
}

#  Resource Group Name
variable "resource_group" {
  type    = string
  default = "AKSCluster-RG"
}

# Server name
variable "psqlserver_name" {
  type    = string
  default = "AKSTerraformpsql"
}

variable "psqladmin_username" {
  type    = string
  default = "aksadmin"
}
