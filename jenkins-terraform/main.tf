variable "test1" {
    type=list(string)
    default=["abc.txt","xyz.txt","tyu.txt"]
}

variable "test2"{
    type=string
    default="Default content value was passed for this variable"
}

resource "local_file" "res1" {
    filename = var.test1[1]
    content = var.test2
}