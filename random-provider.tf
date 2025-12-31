terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "random" {}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "random_value" {
  value = random_string.random.result
}
