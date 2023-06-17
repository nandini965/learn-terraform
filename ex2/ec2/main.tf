
resource "aws_instance" "instance" {
  ami           = data.aws_ami.centos.image_id
  vpc_security_group_ids = [var_id]

  tags = {
    Name = "test"
  }
}
data "aws_ami" "centos" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}
variable "sg_id" {}