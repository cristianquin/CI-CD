output "ec2_instance_id" {
  description = "ID de la instancia EC2"
  value       = module.ec2.instance_id
}

output "rds_endpoint" {
  description = "Endpoint de la base de datos RDS"
  value       = module.rds.db_endpoint
}

output "s3_bucket_name" {
  description = "Nombre del bucket S3"
  value       = module.s3.bucket_name
}
