locals {
  filename = "local1.txt"
#   content = "Local content"
}
locals {
    content = "Local content"
}
resource "local_file" "f1" {
    filename = local.filename
    content = local.content
}