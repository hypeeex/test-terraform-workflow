
resource "local_file" "pyfile" {
  filename = "hello.py"
  content = <<-EOT
    def hello():
        print("Hello, World!")
    hello()
  EOT
}

output "output_file" {
  value = local_file.pyfile.filename
}
