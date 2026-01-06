resource "local_file" "test" {
  filename = var.filename[1][0]
  content  = slice(var.content, 1, 3)
}


# resource "local_file" "test1" {
#     filename=var.filename1
#     content=var.filename1
# }

# resource "local_file" "test2" {
#     filename=var.filename2
#     content=var.filename2
# }

# resource "local_file" "test3" {
#     filename=var.filename3
#     content=var.filename3
# }

# resource "local_file" "test4" {
#     filename=var.filename4
#     content=var.filename4
# }

# resource "local_file" "test5" {
#     filename=var.filename5[2]
#     content=var.filename5[1]
# }