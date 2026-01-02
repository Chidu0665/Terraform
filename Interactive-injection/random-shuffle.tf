variable input {
    type=list
}

resource "random_shuffle" "sample" {
    input=var.input
}

output "result" {
    value=random_shuffle.sample.result
}