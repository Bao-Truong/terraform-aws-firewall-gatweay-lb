########################
## INTERNET GATEWAY
########################
module "Internet-GTW" {
  source           = "../../modules/aws-internet-gateway-mod"
  vpc_id           = module.FIREWALL-VPC.vpc_id
  descriptive_name = "FIREWALL"

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}
########################
## EIP for NAT Gateway
########################
module "NAT-GTW-2a-EIP" {
  source           = "../../modules/aws-elastic-ip-mod"
  descriptive_name = "NATGW-Firewall-Outbound-2A"

  alias       = local.alias
  common_tags = local.common_tags
  prefix      = local.prefix
}
module "NAT-GTW-2b-EIP" {
  source           = "../../modules/aws-elastic-ip-mod"
  descriptive_name = "NATGW-Firewall-Outbound-2B"

  alias       = local.alias
  common_tags = local.common_tags
  prefix      = local.prefix
}
module "NAT-GTW-2c-EIP" {
  source           = "../../modules/aws-elastic-ip-mod"
  descriptive_name = "NATGW-Firewall-Outbound-2C"

  alias       = local.alias
  common_tags = local.common_tags
  prefix      = local.prefix
}
################
## Nat gateway 
################
module "NAT-GTW-2a" {
  source           = "../../modules/aws-nat-gateway-mod"
  allocation_id    = module.NAT-GTW-2a-EIP.allocation_id
  descriptive_name = "NATGW-Firewall-Outbound-2A"

  subnet_id   = module.Firewall-public-subnets.subnet_ids[0]
  alias       = local.alias
  common_tags = local.common_tags
  prefix      = local.prefix
}
module "NAT-GTW-2b" {
  source           = "../../modules/aws-nat-gateway-mod"
  allocation_id    = module.NAT-GTW-2b-EIP.allocation_id
  descriptive_name = "NATGW-Firewall-Outbound-2B"

  subnet_id   = module.Firewall-public-subnets.subnet_ids[1]
  alias       = local.alias
  common_tags = local.common_tags
  prefix      = local.prefix
}

module "NAT-GTW-2c" {
  source           = "../../modules/aws-nat-gateway-mod"
  allocation_id    = module.NAT-GTW-2c-EIP.allocation_id
  descriptive_name = "NATGW-Firewall-Outbound-2C"

  subnet_id   = module.Firewall-public-subnets.subnet_ids[2]
  alias       = local.alias
  common_tags = local.common_tags
  prefix      = local.prefix
}
