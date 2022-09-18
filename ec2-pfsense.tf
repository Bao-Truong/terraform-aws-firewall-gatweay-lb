module "pfsense-az2a" {
  source           = "../../modules/aws-ec2-instance-mod"
  descriptive_name = "Pfsense-az2a"

  ami           = "ami-08eebc4e0d3902cca"
  instance_type = "t2.micro"
  key_name      = var.key_name

  subnet_id              = module.Firewall-public-subnets.subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.Pfsense-SG.id]

  source_dest_check = false

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

resource "aws_network_interface_attachment" "pfsense-az2a-attachment" {
  instance_id          = module.pfsense-az2a.id
  network_interface_id = aws_network_interface.Pfsense-LAN-az2a.id
  device_index         = 1
}

module "pfsense-az2b" {
  source           = "../../modules/aws-ec2-instance-mod"
  descriptive_name = "Pfsense-az2b"

  ami           = "ami-08eebc4e0d3902cca"
  instance_type = "t2.micro"
  key_name      = var.key_name

  subnet_id              = module.Firewall-public-subnets.subnet_ids[1]
  vpc_security_group_ids = [aws_security_group.Pfsense-SG.id]

  source_dest_check = false

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

resource "aws_network_interface_attachment" "pfsense-az2b-attachment" {
  instance_id          = module.pfsense-az2b.id
  network_interface_id = aws_network_interface.Pfsense-LAN-az2b.id
  device_index         = 1
}

module "pfsense-az2c" {
  source           = "../../modules/aws-ec2-instance-mod"
  descriptive_name = "Pfsense-az2c"

  ami           = "ami-08eebc4e0d3902cca"
  instance_type = "t2.micro"
  key_name      = var.key_name

  subnet_id              = module.Firewall-public-subnets.subnet_ids[2]
  vpc_security_group_ids = [aws_security_group.Pfsense-SG.id]

  source_dest_check = false

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

resource "aws_network_interface_attachment" "pfsense-az2c-attachment" {
  instance_id          = module.pfsense-az2c.id
  network_interface_id = aws_network_interface.Pfsense-LAN-az2c.id
  device_index         = 1
}

resource "aws_security_group" "Pfsense-SG" {
  name        = "Pfsense Securitygroup"
  description = "Pfsense Securitygroup"
  vpc_id      = module.FIREWALL-VPC.vpc_id

  ingress {
    from_port        = 1194
    to_port          = 1194
    protocol         = "udp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["42.113.149.240/32"]
    ipv6_cidr_blocks = []
  }

  ingress {
    from_port        = 2222
    to_port          = 2222
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 4500
    to_port          = 4500
    protocol         = "udp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 500
    to_port          = 500
    protocol         = "udp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "TCP"
    cidr_blocks      = ["42.113.149.240/32"]
    ipv6_cidr_blocks = []
  }
  ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Pfsense Securitygroup"
  }
}
