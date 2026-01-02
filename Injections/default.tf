variable filename {
    default = "default.txt"
    type = string
}
variable content {
    default = " This is the default content value set"
}
resource "local_file" "t2" {
    filename = var.filename
    content = var.content
}

