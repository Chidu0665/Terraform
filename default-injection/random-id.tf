variable "byte_length" {

}

resource "random_id" "example" {
  byte_length = var.byte_length
}

output "result"{
    value=random_id.example.id
}