variable "tags" {}

variable "rds_storage" {
  type    = number
  default = "20"
}

variable "rds_password_length" {
  type    = number
  default = "16"
}

variable "rds_storage_type" {
  type    = string
  default = "gp2"
}

variable "rds_engine" {
  type    = string
  default = "mysql"
}

variable "rds_engine_version" {
  type    = string
  default = "5.7"
}

variable "rds_instance_class" {
  type    = string
  default = "db.t2.micro"
}

variable "rds_instance_name" {
  type    = string
  default = "dev-instance"
}

variable "rds_instance_user" {
  type    = string
  default = "dev-user"
}

variable "rds_parameter_group" {
  type    = string
  default = "default.mysql5.7"
}

variable "kms_key_id" {
  type    = string
}
