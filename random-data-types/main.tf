

# data local_file readfile {
#     filename = "/Users/chidu/Desktop/Devops/terraform/file1.txt"
# }

# output result {
#     value = data.local_file.readfile.content
# }

# resource "local_file" r1 {
# 	filename = "qwrty.txt"
#     content  = data.local_file.readfile.content_base64
# }

# variable "content" {
#     type = any
#     default = "Common content"
# }

# variable filename88 {
#     type=map
#     default = {
#         name="chidu"
#         phnum=123543567
#         isactive=true

#     }
# }

# variable filename99 {
#     type=map(list(any))
#     default= {
#         name=["Chidu", "Hydra"]
#         phnum=[3546578,23465]
#         isactive=[true,false]
#     }
# }

# resource "local_file" "f8" {
#     filename = var.filename88.name
#     content = var.content
# }

# resource "local_file" "f9" {
#     filename = var.filename99.name[1]
#     content = var.content
# }

# variable content {
#     default = "test"
# }

# variable filename12 {
#     type = object ({
#         name=string
#         id=number
#         address = list(string)
#     })

#     default = {
#         name = "Chidu"
#         id = 0665
#         address = ["Birur", "Bangalore"]
#     }
# }

# resource local_file "sample"{
#     filename = var.filename12.name
#     content = var.content
# }




# variable minmax {
#     type=object({
#         min=number
#         max=number
#     })

# }

# resource "random_integer" "sample" {
#     min = var.minmax.min
#     max = var.minmax.max
# }

# output "result" {
#     value = random_integer.sample.result
# }

# variable max {
#     type=set(number)
# }

# variable min {
#     type = set(number)
# }

# resource "random_integer" "sample"{
#     max=tolist(var.max)[2]
#     min=tolist(var.min)[2]
# }

# output "result1" {
#     value=random_integer.sample.result
# }
# output "min_output"{
#     value=var.min
# }
# output "max_output"{
#     value=var.max
# }




# variable "input1" {
#     type = list
# }

# resource "random_shuffle" "sample"{
#     input = var.input1
# }

# output "result" {
#     value=random_shuffle.sample.result
# }




# variable length1 {
#     type=number
# }

# variable enable_random {
# type=bool
# }

# resource "random_bytes" "sample"{
#     length=var.length1
# }
# output "result" {
#     value=var.enable_random ? random_bytes.sample.base64 : "disabled"
#     sensitive = true
# }