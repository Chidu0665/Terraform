variable lenght {

}
resource "random_string" "sample" {
    length=var.lenght
}
output "result" {
    value=random_string.sample.result
}