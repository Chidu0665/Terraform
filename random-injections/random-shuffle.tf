variable lsinput {

}

resource "random_shuffle" "sample" {
    input=var.lsinput
}
output "result" {
    value=random_shuffle.sample.result
}