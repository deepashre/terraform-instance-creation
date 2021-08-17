provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "app" { 
    ami = "ami-093da3ec1c40a85d6"
    instance_type = "t2.micro"
    key_name = "cloud-poc"
    associate_public_ip_address = "true"
    
    tags = {
    Name = "Deploy-Tomcat9"
    }

}
output "publicip" {
  value = aws_instance.app.public_ip
}
