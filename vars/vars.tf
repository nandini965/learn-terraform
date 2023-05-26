variable "sample_string" {
  default = "Hello world"
}
variable "sample_number" {
 default = 100
}
# 10.6 is also a number in terraform
variable "sample_boolean" {
  default = true
}
## booleans and numbers doesnot need to be quoted, only strings need to be  quoted that to be with double quotes. terraform does support for single quotes
### variable types
# so far we have seen is default variable type
## we have list variable type , meanig single variable can hold mutiple values
variable "sample_list" {
        default = [
        100,
        "hello",
        true,
        123
]
}
##data type inside the list doesnot matter in terrform

#we have a dictionary (or maps) < meaning single variable will have multiple values, & each value s going to have a separate name
variable "sample_dict" {
default = {
number1 = 100
string1 + "hello"
number2 = 123
boolean = true
}
}
## this is the most preferred variable over the list when we declare the data
