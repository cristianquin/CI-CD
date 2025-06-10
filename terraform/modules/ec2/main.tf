variable "env_name" {}
variable "instance_type" {}

resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu Server 20.04 LTS (us-east-1)
  instance_type = var.instance_type

  tags = {
    Name = "${var.env_name}-ec2"
  }
}

output "instance_id" {
  value = aws_instance.app_server.id
}
