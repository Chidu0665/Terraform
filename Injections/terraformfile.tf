variable filenameterra {
    default = "terrafile.txt"
    type = string
}
variable contentterra {
    
}
resource "local_file" "t4" {
    filename = var.filenameterra
    content = var.contentterra
}