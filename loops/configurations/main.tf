module "m1" {
  source = "."
}

locals {
  filename_upper = [for key,value in var.filenamemap : upper(value)]
  filename_upper_list = [for value in var.filenamelist : upper(value)]
  map_upper = {for key,value in var.filenamemap : upper(key) => lower(value)}
}

resource "local_file" "test1"{
  count = length(local.filename_upper)
  filename = local.filename_upper[count.index]
  content = "Players list"
}
output mapupper {
    value = local.map_upper
}

output listupper {
    value = local.filename_upper_list
}
# variable filenamemap {
#   type = map(string)
#   default = {
#     name1 = "shadow"
#     name2 = "predator"
#   }
# }

# variable "filenamelist" {
#   type = list(string)
#   default = ["Mortal Kombact Player1","Mortal Kombact Player2"]
# }