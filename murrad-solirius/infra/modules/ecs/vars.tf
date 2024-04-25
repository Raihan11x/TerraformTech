variable "route53_record_name" {
  description = "Env specific record name"
  type        = string
}

variable "route53_hosted_zone_id" {
  description = "Global hosted zone"
  type        = string
}

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

variable "domain_name" {
  description = "The domain name for the DNS zone"
  type        = string
}

variable "ingress_cidr_alb" {
  description = "The ingress CIDR for the security group"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID for the ECS cluster"
  type        = string
}
