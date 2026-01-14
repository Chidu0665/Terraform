resource "local_file" r1 {
    filename = "file.txt"
    content = data.local_file.readfile.content_base64
}