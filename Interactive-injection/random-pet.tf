variable "wordlength" {

}


resource "random_pet" "sample" {
    length=var.wordlength
}

output "result" {
    value=random_pet.sample.id
 
}