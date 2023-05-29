variable "security_group_id" {}

data "aws_security_group" name = "allow all" {
  id = "${var.security_group_id}"

output "security_group_id" {
value = data.aws_security_groups_id
}
}