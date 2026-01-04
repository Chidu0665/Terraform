variable inplist {
    default = ["a","b","c","d"]
}

resource "random_shuffle" "sample" {
input = var.inplist
}

output "reesult" {
    value=random_shuffle.sample.result
}