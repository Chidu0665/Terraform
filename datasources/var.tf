data local_file readfile {
    filename = "/Users/chidu/Desktop/Devops/terraform/modules/abc.txt"
}

output or1 {
    value = data.local_file.readfile.content
}