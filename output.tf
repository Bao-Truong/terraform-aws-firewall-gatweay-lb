output "private_subnets" {
  value = module.Firewall-private-subnets.subnet_ids
}
output "public_subnets" {
  value = module.Firewall-public-subnets.subnet_ids
}
output "management_subnets" {
  value = module.Firewall-management-subnets.subnet_ids
}
