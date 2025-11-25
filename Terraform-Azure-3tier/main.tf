module "network" {
  source       = "./modules/network"
  prefix       = var.prefix
  location     = var.location
  address_space = var.address_space
  subnets      = var.subnets
}

module "compute" {
  source        = "./modules/compute"
  prefix        = var.prefix
  location      = var.location
  rg_name       = module.network.rg_name
  vnet_id       = module.network.vnet_id
  subnet_id     = module.network.subnet_ids["app"]
  admin_username = var.admin_username
  admin_password = var.admin_password
  vm_size       = var.vm_size
  instance_count = var.instance_count
}

module "db" {
  source    = "./modules/db"
  prefix    = var.prefix
  location  = var.location
  rg_name   = module.network.rg_name
  subnet_id = module.network.subnet_ids["db"]
  postgres_version = var.postgres_version
}
