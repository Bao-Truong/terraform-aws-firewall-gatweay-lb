module "GatwayLB" {
  create_lb          = false
  source             = "../../modules/aws-elastic-load-balancer-mod"
  load_balancer_type = "gateway"
  name               = "Firewall-GTW-LB"
  vpc_id             = module.FIREWALL-VPC.vpc_id
  subnets            = module.Firewall-public-subnets.subnet_ids
  ip_address_type    = null

  target_groups = [
    {
      name             = "GWLB-Firewall"
      backend_protocol = "GENEVE"
      backend_port     = 6081
      target_type      = "instance"
      targets = {
        firewall_ec2_az2a = {
          target_id = module.pfsense-az2a.id
        },
        firewall_ec2_az2b = {
          target_id = module.pfsense-az2b.id
        },
        firewall_ec2_az2c = {
          target_id = module.pfsense-az2c.id
        }
      }
      tags = {
        tcp_udp = true
      }
    }
  ]


  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}
