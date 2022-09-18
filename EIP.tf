module "Pfsense-az2a-EIP" {
  source            = "../../modules/aws-elastic-ip-mod"
  descriptive_name  = "Pfsense-az2a-EIP"
  network_interface = module.pfsense-az2a.primary_network_interface_id

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}
