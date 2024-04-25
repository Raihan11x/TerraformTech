#Dev region
aws_region = "eu-central-1"

#ECS
route53_record_name    = "web-api-prod"
cluster_name                   = "prod-cluster"
task_family                    = "prod-task-family"
task_cpu                       = "512"
task_memory                    = "1024"
container_name                 = "prod-web-api-container"
container_image                = "nginx:latest"
container_port                 = 80
service_name                   = "prod-web-app-service"
desired_count                  = 2
cpu_utilization_high_threshold = 80
ecs_max_capacity                   = 10
ecs_min_capacity                   = 1
ecs_cpu_scale_up_threshold         = 80
ecs_cpu_scale_down_threshold       = 20

#RDS
db_name = rds-prod
db_username = solirius
allocated_storage              = 20
storage_type                   = "gp2"
engine                         = "mysql"
engine_version                 = "5.7"
instance_class                 = "db.t3.medium"
db_parameter_family            = "mysql5.7"
rds_cpu_utilization_high_threshold = 85
rds_instance_identifier = "prod-rds"
ssm_parameter_name = "prod-parameter"

#VPC
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones   = ["eu-central-1a", "eu-west-1b"]