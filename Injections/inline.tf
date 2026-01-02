variable filenameinline {

}
variable contentinline {
    
}
resource "local_file" "t6" {
    filename = var.filenameinline
    content = var.contentinline
}