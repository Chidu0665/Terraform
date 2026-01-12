# output "result" {
#     value=random_id.test2.id
# }

variable "test"{
    type=tuple([string,string,number]) 
    default=["hello","bye",1234]
}

variable "content"{
    type=string
    default="Default content"
}
resource "local_file" "res" {
    filename=var.test.name #same for map object
    content=var.content
}