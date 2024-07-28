variable "nodejsapp_instance_type" {
  description = "Instance type for nodejsapp"
  default     = "t2.small"
}

variable "jenkins_instance_type" {
  description = "Instance type for Jenkins"
  default     = "t2.medium"
}

variable "monitoring_instance_type" {
  description = "Instance type for monitoring"
  default     = "t2.micro"
}

variable "db_instance_class" {
  description = "Instance class for RDS"
  default     = "db.t2.micro"
}

variable "db_engine" {
  description = "Database engine for RDS"
  default     = "mysql"
}

variable "db_engine_version" {
  description = "Database engine version for RDS"
  default     = "5.7"
}

variable "db_allocated_storage" {
  description = "Allocated storage for RDS (in GB)"
  default     = 20
}

variable "db_master_username" {
  description = "Master username for RDS"
  default     = "root"
}

variable "db_master_password" {
  description = "Master user password for RDS"
  default     = "12345678"
}