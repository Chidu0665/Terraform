variable "filename" {
  type    = list(string)
  default = ["abc.txt", "xyz.txt"]
}
resource "local_file" "f11" {
  count    = length(var.filename)
  filename = var.filename[count.index]
  content  = "aaa"
}
