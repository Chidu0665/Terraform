




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