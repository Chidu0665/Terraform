# variable "byte-length" {
#     default=16
# }

# resource "random_bytes" "sample" {
#     length=var.byte-length
# }

# output "result" {
#     value=random_bytes.sample.base64
#     sensitive=true
# }