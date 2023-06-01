

//data "aws_security_group" "selected" {
  //name = "allow all"
//}
//output "security_group_id" {
//value = data.aws_security_group.selected.id
//}

//data "aws_security_group" "test" {}
//output "all_sg" {
//  value = "data.aws_security_group_test"
//}


data "aws_security_groups" "test" {}
data "aws_security_groups" "single" {
  count = length(data.aws_security_groups.test.id)
  id = "data.aws_security_groups.test.ids[count.index]"
}
output "all_sg" {
  value = "data.aws_security_groups_test"
}