provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "webapp" { 
    ami = "ami-04cedf5afbdca0e15"
    instance_type = "t2.micro"
    key_name = "cloud-poc"
    
    tags = {
    Name = "web-app"
    }

}
output "publicip" {
  value = aws_instance.webapp.public_ip
}
