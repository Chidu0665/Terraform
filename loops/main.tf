# variable "files" {
#   type = map(string)
#   default = {
#     file1 = "Hello from file 1"
#     file2 = "Hello from file 2"
#   }
# }

# resource "local_file" "forEHdemo" {
#   for_each = var.files

#   filename = "${each.key}.txt"
#   content  = each.value
# }







#count loop for map data type
# variable "files" {
#   type = map(string)
#   default = {
#     file1 = "Hello from file 1"
#     file2 = "Hello from file 2"
#   }
# }

# resource "local_file" "Ctsample" {
#   count = length(keys(var.files))

#   filename = "${keys(var.files)[count.index]}.txt"
#   content  = values(var.files)[count.index]
# }





#for_each
# resource "local_file" "f12" {
#   filename = each.value
#   for_each = var.filename1
#   content  = "aaa"
# }

# variable "filename1" {
#   type    = set(string)
#   default = ["abcd.txt", "xyzd.txt"]
# }




#count
# variable "filename" {
#   type    = list(string)
#   default = ["abc.txt", "xyz.txt"]
# }
# resource "local_file" "f11" {
#   count    = length(var.filename)
#   filename = var.filename[count.index]
#   content  = "aaa"
# }
