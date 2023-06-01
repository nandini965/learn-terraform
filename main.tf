

//data "aws_security_group" "selected" {
  //name = "allow all"
//}
//output "security_group_id" {
//value = data.aws_security_group.selected.id
//}


data "aws_security_group" "test" {}
data "aws_security_group" "single" {
  count = length("data.aws_security_groups".test.ids)
  id = "data.aws_security_groups.test.ids [count.index]"
}
output "all_sg" {
  value = "data.aws_security_group_test"
}