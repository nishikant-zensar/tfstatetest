variable "location" {
  description = "Firewall Policy Region"
  type        = string
  default     = "northeurope"
}
variable "org" { default = "ims" }
variable "env" { default = "prd" }
variable "sub" { default = "conn" }
variable "region" { default = "ne" }
variable "type" { default = "rg" }
variable "suffix" { default = "network" }
variable "envtag" { default = "prd" }
