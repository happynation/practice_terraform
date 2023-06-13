resource "aws_key_pair" "my_key" {
  key_name   = "myapp_key"
  public_key = file(var.path_to_public_key)
}