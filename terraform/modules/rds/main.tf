variable "env_name" {}
variable "db_name" {}
variable "db_username" {}
variable "db_password" {}

resource "aws_db_instance" "postgres" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "14"
  instance_class       = "db.t3.micro"
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  skip_final_snapshot  = true
  publicly_accessible  = true

  tags = {
    Name = "${var.env_name}-rds"
  }
}

output "db_endpoint" {
  value = aws_db_instance.postgres.address
}
