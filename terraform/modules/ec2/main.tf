variable "env_name" {}
variable "instance_type" {}

resource "aws_instance" "app_server" {
  ami           = "ami-020cba7c55df1f615"
  instance_type = var.instance_type

  tags = {
    Name = "${var.env_name}-ec2"
  }
}

output "instance_id" {
  value = aws_instance.app_server.id
}
