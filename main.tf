# Zdefiniuj zmienne
variable "file_path" {
  default = "welcome.txt"
}

variable "content" {
  default = "${file("${path.module}/welcome.py")}"
}

# Utwórz zasób
resource "local_file" "welcome_file" {
  filename = var.file_path
  content  = var.content
}

# Wywołaj funkcję Pythona
provisioner "local-exec" {
  command = "python3 ${path.module}/welcome.py"
}
