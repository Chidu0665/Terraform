resource "local_file" "f1" {
  filename = "abc"
  content  = "Default content"
}
resource "local_file" "f2" {
  filename = "xyz"
  content  = "f2 default content"
  depends_on = [local_file.f4]
}

resource "local_file" "f3" {
  filename = "abcd"
  content  = "aaa"
}
resource "local_file" "f4" {
  filename   = "xyz2"
  content    = "shdf"
  depends_on = [local_file.f3, local_file.f2]
}