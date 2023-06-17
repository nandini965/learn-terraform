source "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo hello from module"
  }
}


source "null_resource" "nothing2" {
  provisioner "local-exec" {
    command = "echo hello from module"
  }
}

source "null_resource" "nothing3" {
  provisioner "local-exec" {
    command = "echo hello from module"
  }
}