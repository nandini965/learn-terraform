

data "aws_security_group" "allow all" {
  id = "${var.security_group_id}"

output "security_group_id" {
value = data.aws_security_groups_id
}
}