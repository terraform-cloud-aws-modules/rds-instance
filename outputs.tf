output "this_rds_instance_arn" {
  description = "The ARN from the RDS Instance"
  value       = aws_db_instance.default.arn
}

output "this_rds_instance_id" {
  description = "The ID from the RDS Instance"
  value       = aws_db_instance.default.id
}
