resource "local_file" "f1" {
  filename   = "abc.txt"
  content    = "Default content was changed"
  lifecycle {
    prevent_destroy = true
  }
}