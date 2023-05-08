resource "local_file" "welcome" {
  filename = "welcome.py"
  content  = "#!/usr/bin/env python\n\ndef greet():\n    print(\"Hello, world!\")\n"
}
