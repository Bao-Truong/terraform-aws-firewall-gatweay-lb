module "Firewall-management-subnets" {
  source = "../../modules/aws-vpc-subnet-mod"
  vpc_id = module.FIREWALL-VPC.vpc_id
  azs    = var.azs

  subnets                 = var.mgt_subnets
  subnet_suffix           = var.mgt_subnet_suffix
  map_public_ip_on_launch = var.mgt_map_public_ip_on_launch

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

module "Firewall-public-subnets" {
  source = "../../modules/aws-vpc-subnet-mod"
  vpc_id = module.FIREWALL-VPC.vpc_id
  azs    = var.azs

  subnets                 = var.pubclic_subnets
  subnet_suffix           = var.pubclic_subnet_suffix
  map_public_ip_on_launch = var.pubclic_map_public_ip_on_launch

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

module "Firewall-private-subnets" {
  source = "../../modules/aws-vpc-subnet-mod"
  vpc_id = module.FIREWALL-VPC.vpc_id
  azs    = var.azs

  subnets                 = var.private_subnets
  subnet_suffix           = var.private_subnet_suffix
  map_public_ip_on_launch = var.private_map_public_ip_on_launch

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}
