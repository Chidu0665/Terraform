variable min {
}

variable max {
}
resource random_integer sample {
  min = var.min
  max = var.max
}
output result {
    value=random_integer.sample.result
}
