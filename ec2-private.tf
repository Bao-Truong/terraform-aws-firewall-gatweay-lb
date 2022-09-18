module "private-az2a" {
  source           = "../../modules/aws-ec2-instance-mod"
  descriptive_name = "Private-ec2-az2a"

  ami           = "ami-0568773882d492fc8"
  instance_type = "t2.micro"
  key_name      = var.key_name

  subnet_id              = module.Firewall-private-subnets.subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.Private-SG.id]

  source_dest_check = false

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

module "private-az2b" {
  source           = "../../modules/aws-ec2-instance-mod"
  descriptive_name = "Private-ec2-az2b"

  ami           = "ami-0568773882d492fc8"
  instance_type = "t2.micro"
  key_name      = var.key_name

  subnet_id              = module.Firewall-private-subnets.subnet_ids[1]
  vpc_security_group_ids = [aws_security_group.Private-SG.id]

  source_dest_check = false

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

module "private-az2c" {
  source           = "../../modules/aws-ec2-instance-mod"
  descriptive_name = "Private-ec2-az2c"

  ami           = "ami-0568773882d492fc8"
  instance_type = "t2.micro"
  key_name      = var.key_name

  subnet_id              = module.Firewall-private-subnets.subnet_ids[2]
  vpc_security_group_ids = [aws_security_group.Private-SG.id]

  source_dest_check = false

  alias       = local.alias
  prefix      = local.prefix
  common_tags = local.common_tags
}

resource "aws_security_group" "Private-SG" {
  name        = "Private EC2 Securitygroup"
  description = "Private EC2 Securitygroup"
  vpc_id      = module.FIREWALL-VPC.vpc_id


  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
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
    Name = "Private EC2 Securitygroup"
  }
}
