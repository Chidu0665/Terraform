module "m1" {
    source = "./filefolder"
    vf1 = var.m1f1
    vf2 = "How are you"
}

module "m2" {
    source = "./filefolder"
    vf1 = "abc.txt"
    # vf2 = "Good morning"
}

module "m3" {
    source = "/Users/chidu/Desktop/Devops/terraform/datasources"
}

module "m4"{
    source = "git@github.com:adikarthik/Terraform.git"
}
module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "5.0.1"
  # insert the 2 required variables here
}
module "vnet_example_all_default" {
  source  = "Azure/vnet/azurerm//examples/all_default"
  version = "5.0.1"
}
variable "m1f1" {
    default = "Hello world"
}