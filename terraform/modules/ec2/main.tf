variable "env_name" {}
variable "instance_type" {}
variable "ssh_key_name" {}
variable "public_key_path" {}

resource "aws_key_pair" "deployer" {
  key_name   = var.ssh_key_name
  public_key = file(var.public_key_path)
}

resource "aws_instance" "app_server" {
  ami           = "ami-020cba7c55df1f615"
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "${var.env_name}-ec2"
  }
}

output "instance_id" {
  value = aws_instance.app_server.id
}

output "public_ip" {
  value = aws_instance.app_server.public_ip
}
