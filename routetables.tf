#############################
## Manamenent Route tables
#############################
module "Mgt-subnet-2a-routetable" {
  source           = "../../modules/aws-route-table-mod"
  descriptive_name = var.rt_descriptive_name_2a
  vpc_id           = module.FIREWALL-VPC.vpc_id
  route = [{
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = module.NAT-GTW-2a.id
  }]

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}


module "Mgt-subnet-2b-routetable" {
  source           = "../../modules/aws-route-table-mod"
  descriptive_name = var.rt_descriptive_name_2b
  vpc_id           = module.FIREWALL-VPC.vpc_id
  route = [{
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = module.NAT-GTW-2b.id
  }]

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}


module "Mgt-subnet-2c-routetable" {
  source           = "../../modules/aws-route-table-mod"
  descriptive_name = var.rt_descriptive_name_2c
  vpc_id           = module.FIREWALL-VPC.vpc_id
  route = [{
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = module.NAT-GTW-2c.id
  }]

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

module "Mgt-subnet-2a-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-management-subnets.subnet_ids[0]
  route_table_id = module.Mgt-subnet-2a-routetable.id
}
module "Mgt-subnet-2b-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-management-subnets.subnet_ids[1]
  route_table_id = module.Mgt-subnet-2b-routetable.id
}
module "Mgt-subnet-2c-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-management-subnets.subnet_ids[2]
  route_table_id = module.Mgt-subnet-2c-routetable.id
}


#######################
## Internet Gateway Edge Route table
#######################

module "IGW-Edge" {
  source           = "../../modules/aws-route-table-mod"
  descriptive_name = var.rt_descriptive_name_edge
  vpc_id           = module.FIREWALL-VPC.vpc_id
  route = [
    {
      cidr_block = var.private_subnets[0]
      # instance_id          = module.pfsense-az2a.id
      network_interface_id = aws_network_interface.Pfsense-LAN-az2a.id
    },
    {
      cidr_block = var.private_subnets[1]
      # instance_id          = module.pfsense-az2b.id
      network_interface_id = aws_network_interface.Pfsense-LAN-az2b.id
    },
    {
      cidr_block = var.private_subnets[2]
      # instance_id          = module.pfsense-az2c.id
      network_interface_id = aws_network_interface.Pfsense-LAN-az2c.id
    }

  ]

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

module "IGW-Edge-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  route_table_id = module.IGW-Edge.id
  gateway_id     = module.Internet-GTW.id
}

#######################
## Public Route table
#######################
module "Public-Route-Table" {
  source           = "../../modules/aws-route-table-mod"
  descriptive_name = var.rt_descriptive_name_public
  vpc_id           = module.FIREWALL-VPC.vpc_id
  route = [{
    cidr_block = "0.0.0.0/0"
    gateway_id = module.Internet-GTW.id
  }]

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

module "public-subnet-2a-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-public-subnets.subnet_ids[0]
  route_table_id = module.Public-Route-Table.id
}
module "public-subnet-2b-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-public-subnets.subnet_ids[1]
  route_table_id = module.Public-Route-Table.id
}
module "public-subnet-2c-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-public-subnets.subnet_ids[2]
  route_table_id = module.Public-Route-Table.id
}

#######################
## Private Route table
#######################
module "Private-Route-Table-2a" {
  source           = "../../modules/aws-route-table-mod"
  descriptive_name = var.rt_descriptive_name_private_2a
  vpc_id           = module.FIREWALL-VPC.vpc_id
  route = [
    {
      cidr_block = "0.0.0.0/0"
      # instance_id          = module.pfsense-az2a.id
      network_interface_id = aws_network_interface.Pfsense-LAN-az2a.id
    }

  ]

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

module "Private-subnet-2a-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-private-subnets.subnet_ids[0]
  route_table_id = module.Private-Route-Table-2a.id
}


module "Private-Route-Table-2b" {
  source           = "../../modules/aws-route-table-mod"
  descriptive_name = var.rt_descriptive_name_private_2b
  vpc_id           = module.FIREWALL-VPC.vpc_id
  route = [
    {
      cidr_block = "0.0.0.0/0"
      # instance_id          = module.pfsense-az2b.id
      network_interface_id = aws_network_interface.Pfsense-LAN-az2b.id
    }

  ]

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}
module "Private-subnet-2b-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-private-subnets.subnet_ids[1]
  route_table_id = module.Private-Route-Table-2b.id
}


module "Private-Route-Table-2c" {
  source           = "../../modules/aws-route-table-mod"
  descriptive_name = var.rt_descriptive_name_private_2c
  vpc_id           = module.FIREWALL-VPC.vpc_id
  route = [
    {
      cidr_block = "0.0.0.0/0"
      # instance_id          = module.pfsense-az2c.id
      network_interface_id = aws_network_interface.Pfsense-LAN-az2c.id
    }

  ]

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}
module "Private-subnet-2c-routetable-associate" {
  source         = "../../modules/aws-route-table-associate-mod"
  subnet_id      = module.Firewall-private-subnets.subnet_ids[2]
  route_table_id = module.Private-Route-Table-2c.id
}
