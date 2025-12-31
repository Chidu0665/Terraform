resource "local_file" "demo_file" {
filename = "hello_terraform.txt"
content  = "Hello, this file was created using Terraform!"
}
