variable test {
  type = object({
    key1 = list(string)
    key2 = string
    key3 =number
  })
  default = {
    key1 = ["abc","jhd","jko"]
    key2 = "good"
    key3 = 1234
    }
}
resource "local_file" "f1" {
  filename = var.test.key2
  content = var.test.key1[2]
}
output res {
  value = var.test.key2
}


# variable "filename11" {
# type = tuple([string,number,list(number)])
# default = ["dghsvd",1132,[1,2.3,5]]
# }


# variable content1 {
#   default = "Test"
# }

# resource "local_file" "sample"{
#     filename = var.filename11[0]
#     content = var.content1
# }

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