resource "aws_network_interface" "Pfsense-LAN-az2a" {
  description       = "Pfsense LAN interface AZ2a"
  subnet_id         = module.Firewall-private-subnets.subnet_ids[0]
  private_ips       = ["10.255.253.10"]
  security_groups   = [aws_security_group.Allow-LAN-traffic.id]
  source_dest_check = false
  tags = {
    Name = "Pfsense LAN interface AZ2a"
  }
}
resource "aws_network_interface" "Pfsense-LAN-az2b" {
  description       = "Pfsense LAN interface AZ2b"
  subnet_id         = module.Firewall-private-subnets.subnet_ids[1]
  private_ips       = ["10.255.253.45"]
  security_groups   = [aws_security_group.Allow-LAN-traffic.id]
  source_dest_check = false
  tags = {
    Name = "Pfsense LAN interface AZ2b"
  }
}
resource "aws_network_interface" "Pfsense-LAN-az2c" {
  description       = "Pfsense LAN interface AZ2c"
  subnet_id         = module.Firewall-private-subnets.subnet_ids[2]
  private_ips       = ["10.255.253.80"]
  security_groups   = [aws_security_group.Allow-LAN-traffic.id]
  source_dest_check = false
  tags = {
    Name = "Pfsense LAN interface AZ2c"
  }
}


resource "aws_security_group" "Allow-LAN-traffic" {
  name        = "Allow LAN traffic"
  description = "Allow LAN traffic"
  vpc_id      = module.FIREWALL-VPC.vpc_id

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
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
    Name = "Allow LAN traffic"
  }
}
