variable filename {
    default = "interactive.txt"
    type = string
}
variable content {
    
}
resource "local_file" "t1" {
    filename = var.filename
    content = var.content
}