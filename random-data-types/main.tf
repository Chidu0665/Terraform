variable length1 {
    type=number
}

variable enable_random {
type=bool
}

resource "random_bytes" "sample"{
    length=var.length1
}
output "result" {
    value=var.enable_random ? random_bytes.sample.base64 : "disabled"
    sensitive = true
}