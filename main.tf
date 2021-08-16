provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "wp" { 
    ami = "ami-0e8e1023f4a053cda"
    instance_type = "t2.micro"
    key_name = "cloud-poc"
    
    tags = {
    Name = "wp-demo"
    }

}
output "publicip" {
  value = aws_instance.wp.public_ip
}
