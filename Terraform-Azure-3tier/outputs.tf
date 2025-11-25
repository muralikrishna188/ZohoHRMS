output "vnet_id" {
  value = module.network.vnet_id
}

output "subnet_ids" {
  value = module.network.subnet_ids
}

output "app_vm_scale_set_id" {
  value = module.compute.vmss_id
}

output "postgres_fqdn" {
  value = module.db.postgres_fqdn
}
