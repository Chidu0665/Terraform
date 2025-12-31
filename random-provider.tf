
resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "random_value" {
  value = random_string.random.result
}
