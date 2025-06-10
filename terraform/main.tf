module "ec2" {
  source        = "./modules/ec2"
  env_name      = var.env_name
  instance_type = var.instance_type
}

module "rds" {
  source         = "./modules/rds"
  env_name       = var.env_name
  db_name        = var.db_name
  db_username    = var.db_username
  db_password    = var.db_password
  db_identifier  = var.db_identifier
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}
