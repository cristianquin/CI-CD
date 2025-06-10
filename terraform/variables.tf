variable "env_name" {
  description = "Nombre del ambiente (dev, test, prod)"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "db_name" {
  description = "Nombre de la base de datos RDS"
  type        = string
}

variable "db_username" {
  description = "Usuario de la base de datos"
  type        = string
}

variable "db_password" {
  description = "Contraseña de la base de datos"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}
