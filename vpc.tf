module "FIREWALL-VPC" {
  source               = "../../modules/aws-vpc-mod"
  descriptive_name     = var.vpc_descriptive_name
  cidr                 = var.cidr
  enable_ipv6          = var.enable_ipv6
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  enable_flow_log                           = var.enable_flow_log
  create_flow_log_cloudwatch_iam_role       = var.create_flow_log_cloudwatch_iam_role
  create_flow_log_cloudwatch_log_group      = var.create_flow_log_cloudwatch_log_group
  flow_log_cloudwatch_log_group_name_prefix = var.flow_log_cloudwatch_log_group_name_prefix

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

