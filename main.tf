resource "null_resource" "test" {
  triggers = {
    value = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "python3 hello.py"
  }
}

