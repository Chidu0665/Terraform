variable filename-def {
    default = "default.txt"
    type = string
}
variable content-def {
    default = " This is the default content value set"
}
resource "local_file" "t2" {
    filename = var.filename-def
    content = var.content-def
}

