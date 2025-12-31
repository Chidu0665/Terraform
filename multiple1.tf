# Resource 1: Create first file (directory auto-created)
resource "local_file" "file_one" {
  filename = "demo_folder/xyz1.txt"
  content  = "TEST"
}

# Resource 2: Create second file
resource "local_file" "file_two" {
  filename = "demo_folder/xyz2.txt"
  content  = "This is the second file created by Terraform."
}

# Resource 3: Create a file explicitly representing the string variable
resource "local_file" "string_variable_file" {
  filename = "demo_folder/string_variable.txt"
  content  = "TEST1"
}
