variable vf1 {
    default = "KIT"
}

variable vf2 {
    default = "testing"
}

resource local_file lf1 {
    filename = var.vf1
    content = var.vf2
}

output olf1 {
    value = local_file.lf1.id
}