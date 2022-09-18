# resource "aws_vpc_endpoint_service" "GWLB-Service-Endpoint" {
#   acceptance_required        = false
#   gateway_load_balancer_arns = [module.GatwayLB.lb_arn]
#   allowed_principals         = ["*"]
#   tags = merge({
#     "Name" : "GWLB-Endpoint-Services"
#   })
# }


# resource "aws_vpc_endpoint" "GWLB-AZ2a-Endpoint" {
#   vpc_id            = module.FIREWALL-VPC.vpc_id
#   service_name      = aws_vpc_endpoint_service.GWLB-Service-Endpoint.service_name
#   subnet_ids        = [module.Firewall-private-subnets.subnet_ids[0]]
#   vpc_endpoint_type = aws_vpc_endpoint_service.GWLB-Service-Endpoint.service_type
#   tags = {
#     Name = "GWLB-AZ2a-Endpoint"
#   }
# }


# resource "aws_vpc_endpoint" "GWLB-AZ2b-Endpoint" {
#   vpc_id            = module.FIREWALL-VPC.vpc_id
#   service_name      = aws_vpc_endpoint_service.GWLB-Service-Endpoint.service_name
#   subnet_ids        = [module.Firewall-private-subnets.subnet_ids[1]]
#   vpc_endpoint_type = aws_vpc_endpoint_service.GWLB-Service-Endpoint.service_type
#   tags = {
#     Name = "GWLB-AZ2b-Endpoint"
#   }
# }

# resource "aws_vpc_endpoint" "GWLB-AZ2c-Endpoint" {
#   vpc_id            = module.FIREWALL-VPC.vpc_id
#   service_name      = aws_vpc_endpoint_service.GWLB-Service-Endpoint.service_name
#   subnet_ids        = [module.Firewall-private-subnets.subnet_ids[2]]
#   vpc_endpoint_type = aws_vpc_endpoint_service.GWLB-Service-Endpoint.service_type
#   tags = {
#     Name = "GWLB-AZ2c-Endpoint"
#   }
# }
