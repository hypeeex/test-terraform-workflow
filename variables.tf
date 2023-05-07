variable "file_path" {
  type    = string
  default = "welcome.txt"
}

variable "content" {
  type    = string
  default = "${file("${path.module}/welcome.py")}"
}
