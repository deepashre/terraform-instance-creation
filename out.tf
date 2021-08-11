resource "local_file" "AnsibleInventory" {
 content = templatefile("ip.txt",
 {
  public_ip = aws_instance.test.private_ip
 }
 )
 filename = "ip"
}
