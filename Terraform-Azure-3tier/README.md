Azure 3-tier Terraform scaffold

This scaffold creates a simple 3-tier architecture in Azure:
- Network (VNet + subnets + NSG)
- App (VM Scale Set or single VM)
- Database (Azure Database for PostgreSQL flexible server)

Files:
- provider.tf: AzureRM provider
- main.tf: module calls
- variables.tf: root variables
- outputs.tf: root outputs
- modules/network: VNet + subnets + NSG
- modules/compute: app VM
- modules/db: PostgreSQL server

Usage:
1. terraform init
2. terraform plan
3. terraform apply

Replace variables in `terraform.tfvars` or pass -var flags. This is a starter template; secure secrets and keys appropriately.
