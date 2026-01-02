variable res {
  type        = string
  default     = ""
  description = "This is the first input variable being created"
}

variable filename {
    default = "inp1.txt"
}

variable content {
#default = "Default value passed to content variable"
}

resource local_file name {
  filename = var.filename
  content = var.content
  
}
