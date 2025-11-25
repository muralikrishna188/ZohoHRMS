variable "prefix" {
  type        = string
  description = "Resource name prefix"
  default     = "demo"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "East US"
}

variable "address_space" {
  type        = list(string)
  description = "VNet address space"
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  type = map(object({
    cidr = string
    type = string
  }))
  default = {
    web = { cidr = "10.0.1.0/24", type = "web" }
    app = { cidr = "10.0.2.0/24", type = "app" }
    db  = { cidr = "10.0.3.0/24", type = "db" }
  }
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "postgres_version" {
  type    = string
  default = "14"
}
