variable "length" {
    default = 7
}

resource "random_id" "sample" {
    byte_length=var.length
}

output "result" {
    value=random_id.sample.id
}