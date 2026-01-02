variable "min" {
type=number
}

variable "max" {
type=number
}

resource "random_integer" "example" {
  min = var.min
  max = var.max

}

output "result"{
    value=random_integer.example.result
}