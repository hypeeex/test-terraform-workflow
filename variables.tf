variable "filename" {
  type    = string
  default = "welcome.py"
}

variable "content" {
  type    = string
  default = "#!/usr/bin/env python\n\ndef greet():\n    print(\"Hello, world!\")\n"
}
