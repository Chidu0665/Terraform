variable filename-env {
    default = "environment.txt"
    type = string
}
variable contentenv {
    
}
resource "local_file" "t3" {
    filename = var.filename-env
    content = var.contentenv
}