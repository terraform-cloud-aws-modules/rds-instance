resource "aws_secretsmanager_secret" "this" {
  name                    = "${var.rds_instance_name}-${var.rds_instance_user}-pw"
  tags                    = var.tags
  recovery_window_in_days = 0  
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id               = aws_secretsmanager_secret.this.id
  secret_string           = random_password.rds_password.result
}

resource "random_password" "rds_password" {
  length                  = var.rds_password_length
  special                 = false
}

resource "aws_db_instance" "default" {
  allocated_storage       = var.rds_storage
  storage_type            = var.rds_storage_type
  engine                  = var.rds_engine
  engine_version          = var.rds_engine_version
  instance_class          = var.rds_instance_class
  name                    = var.rds_instance_name
  identifier              = var.rds_instance_identifier
  username                = var.rds_instance_user
  password                = random_password.rds_password.result
  parameter_group_name    = var.rds_parameter_group
  kms_key_id              = var.kms_key_arn
  storage_encrypted       = var.storage_encrypted
  skip_final_snapshot     = var.skip_final_snapshot
  tags                    = var.tags
}
