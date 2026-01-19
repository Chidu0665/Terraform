variable "value_subnets" {
  type = list(object({
    name    = string
    address = list(string)
  }))

  default = [
    {
      name    = "test1-sub"
      address = ["10.0.1.0/24"]
    },
    {
      name    = "test2-sub"
      address = ["10.0.2.0/24"]
    }
  ]
}
