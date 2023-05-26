##shell scripting equilent sample_string = "hello world"
##To print in shell script we use echo , following is the syntax in shell
## echo $ sample_string
output "sample_string" {
  value = var.sample_string
}
## in above case we are printing just variable, if variable is a combination of some strings then following is the synthax. {} is mandatory if we include the variable inside a string
output "sample_string1" {
  value = "value of sample_string = $ {var.sample_string}"
}
## values from list
##second value in list
output "sample_list_2" {
  value = var.sample_list[1]

}

print number1 in samplesample_dict
output "sample_dict_num1" {
  value = var.sample_dict["number1"]
}
output "sample_dict_bool" {
  value = var.sample_dict["boolean"]
}