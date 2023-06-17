resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo hello from module-input-${var.input}"
  }
}
resource "null_resource" "nothing2" {
  provisioner "local-exec" {
    command = "echo hello from module-input-${var.input}"
  }
}
resource "null_resource" "nothing3" {
  provisioner "local-exec" {
    command = "echo hello from module-input-${var.input}"
  }
}
