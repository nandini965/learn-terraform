
  resource = "aws_security_group" "allow-tls" {
  name        = "allow-tls"
    description = "allow tls inbound traffic"
    ingress {
  description = "tls from vpc"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
    from_port     = 0
    to_port       = 0
    protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cdir_blocks = ["::/0"]
    },
  tags = {
  name = "allow_tls"
  }
  }