variable length {

}

resource "random_string" "sample" {
    length=var.length
}

output "result" {
    value=random_string.sample.result
}