provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "app" { 
    ami = "ami-0adef6268736a8a10"
    instance_type = "t2.micro"
    key_name = "cloud-poc"
    
    tags = {
    Name = "Deploy-Apache"
    }

}
output "publicip" {
  value = aws_instance.app.public_ip
}
