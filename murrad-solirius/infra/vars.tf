#vpc
variable "aws_region" {
  description = "The aws region for deployment"
  type        = string
}

variable "env_name" {
  description = "The name of the environment"
  type        = string
}


variable "domain_name" {
  description = "domain name value"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "The list of CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "The list of CIDR blocks for the private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "A list of availability zones in the region"
  type        = list(string)
}

variable "route53_record_name" {
  description = "Env specific record name"
  type        = string
}

variable "route53_hosted_zone_id" {
  description = "Global hosted zone"
  type        = string
}

#ECS

variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "solirius"
}

variable "region" {
  description = "AWS region for the ECS service"
  type        = string
  default     = "eu-west-2"
}


variable "task_family" {
  description = "The family of the ECS task"
  type        = string
}

variable "task_cpu" {
  description = "The amount of CPU to allocate for the task"
  type        = string
}

variable "task_memory" {
  description = "The amount of memory (in MiB) to allocate for the task"
  type        = string
}

variable "container_name" {
  description = "The name of the container"
  type        = string
}

variable "container_image" {
  description = "The image of the container"
  type        = string
}

variable "container_port" {
  description = "The port on which the container listens"
  type        = number
}

variable "service_name" {
  description = "The name of the ECS service"
  type        = string
}

variable "subnets" {
  description = "The subnets for the ECS tasks"
  type        = list(string)
}

variable "security_group_id" {
  description = "The security group ID for the ECS service"
  type        = string
}

variable "desired_count" {
  description = "The desired number of instances of the task definition to run"
  type        = number
}

variable "alb_security_group_id" {
  description = "The security group ID for the Application Load Balancer"
  type        = string
}

variable "alb_subnets" {
  description = "The subnets for the Application Load Balancer"
  type        = list(string)
}

variable "cpu_utilization_high_threshold" {
  description = "The CPU utilization percentage to trigger the high CPU alarm"
  type        = number
}

variable "network_vpc_id" {
  description = "The VPC ID where the service is deployed into"
}

variable "ecs_max_capacity" {
  description = "Maximum number of tasks for ECS auto-scaling"
  type        = number
}

variable "ecs_min_capacity" {
  description = "Minimum number of tasks for ECS auto-scaling"
  type        = number
}

variable "ecs_cpu_scale_up_threshold" {
  description = "CPU utilization percentage to trigger scale up"
  type        = number
}

variable "ecs_cpu_scale_down_threshold" {
  description = "CPU utilization percentage to trigger scale down"
  type        = number
}

variable "ingress_cidr_alb" {
  description = "The ingress CIDR for the security group"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID for the ECS cluster"
  type        = string
}

variable "ssm_parameter_name" {
  description = "ssm parameter name for password"
  type        = string
}

variable "parameter_type" {
  description = "The name of the database"
  type        = string
}

variable "secret_length" {
  description = "length of secret"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "Username for the database"
  type        = string
}

variable "backup_retention_period" {
  description = "The number of days to retain backups for"
  type        = number
  default     = 30
}

variable "allocated_storage" {
  description = "The allocated storage size for the RDS instance"
  type        = number
}

variable "storage_type" {
  description = "The storage type for the RDS instance"
  type        = string
}

variable "engine" {
  description = "The database engine to use"
  type        = string
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "db_parameter_family" {
  description = "The family of the DB parameter group"
  type        = string
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs for the RDS instance"
  type        = list(string)
}

variable "rds_instance_identifier" {
  description = "Identifier for the RDS instance"
  type        = string
}

variable "rds_cpu_utilization_high_threshold" {
  description = "The CPU utilization percentage to trigger the high CPU alarm for RDS"
  type        = number
}

variable "override_special_characters" {
  description = "Identifier for the RDS instance"
  type        = string
}

variable "parameter_name" {
  description = "Identifier for the RDS instance"
  type        = string
}