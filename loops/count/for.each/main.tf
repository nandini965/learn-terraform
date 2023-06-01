resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
  //  command = "echo Fruit Name - ${var.fruits[count.index]}"
  command = "echo ${length(var.fruits)}"
  }
}
variable "fruits" {
  default = {   apple = 10
    orange = 20
    mango =30
  }
}


resource "null_resource" "fruits1" {
  for_each = var.fruits1

  provisioner "local-exec" {
      command = "echo Fruit Name - ${each.key} - ${each.value["count"]}"

  }
}
variable "fruits1" {
  default = {
    apple = {
      name  = "apple"
      count = 10
    }
    orange = {
      name  = "orange"
      count = 10
    }
    banana = {
      name  = "banana"
      count = 100
    }
  }
}