resource "null_resource" "VM-01" {
  provisioner "local-exec" {
    command = "python --version"
  }
}



resource "null_resource" "test" {
  triggers = {
    value = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "python3 hello.py"
  }
}


resource "null_resource" "VM-02" {
  provisioner "local-exec" {
    command = "echo ${var.execution}"
  }
}

