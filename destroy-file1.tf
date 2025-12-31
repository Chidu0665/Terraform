resource "local_file" "demo" {
  filename = "destroy_demo.txt"
  content  = "This file will be destroyed by Terraform."
}