variable filenameauto {
    default = "autofile.txt"
    type = string
}
variable contentauto {
    
}
resource "local_file" "t5" {
    filename = var.filenameauto
    content = var.contentauto
}