resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  public_ip = aws_instance.webapp.public_ip
 }
 )
 filename = "inventory"
}
