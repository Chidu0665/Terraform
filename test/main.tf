
variable "fn1" {
    type=list(string)
    default=["www.txt","poi.txt"]
}

resource "local_file" "mlp" {
    count = length(var.fn1)
    filename = var.fn1[count.index]
    content="default"
    lifecycle{
        prevent_destroy=true
    }
}




# resource "local_file" "test1"{
#     filename = "abc.txt"
#     content = "opty"
#     lifecycle{
#     create_before_destroy=true
#     }
# }

# resource "local_file" "test9"{
#     filename="tyu.txt"
#     content="etyy"
#     depends_on=[local_file.test1]
# }


# resource "random_id" "test2"{
#     byte_length=16
# }

# locals {
#     length=16
# }
# output "local-res"{
#     value = local.length
# }

# variable "var1" {
#     default = "xyz.txt"
#     type=string
# }

# variable "content2" {
#     type=object({
#         name=string
#         phno=number
#         address=string
#     })
   

# }

# resource "local_file" "test3"{
#     filename=var.var1
#     content=var.content2.phno
# }

# output "setop" {
#     value=var.content2
# }