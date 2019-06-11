
provider "google" {
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo \">>>>>>> \" &&  export && echo \" >>>>>>>\"" 
  }
}