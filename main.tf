resource "null_resource" "test" {
  triggers = {
    value = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "python hello.py"
  }
}