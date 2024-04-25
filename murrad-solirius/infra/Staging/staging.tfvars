#Dev region
aws_region = "eu-west-2"

#ECS
route53_record_name    = "web-api-staging"
cluster_name                   = "staging-cluster"
task_family                    = "staging-task-family"
task_cpu                       = "256"
task_memory                    = "512"
container_name                 = "staging-web-api-container"
container_image                = "nginx:latest"
container_port                 = 80
service_name                   = "staging-web-app-service"
desired_count                  = 1
cpu_utilization_high_threshold = 50
ecs_max_capacity                   = 10
ecs_min_capacity                   = 1
ecs_cpu_scale_up_threshold         = 80
ecs_cpu_scale_down_threshold       = 20

#RDS
db_name = rds-staging
db_username = solirius
allocated_storage              = 10
storage_type                   = "gp2"
engine                         = "mysql"
engine_version                 = "5.7"
instance_class                 = "db.t2.micro"
db_parameter_family            = "mysql5.7"
rds_cpu_utilization_high_threshold = 75
rds_instance_identifier = "staging-rds"
ssm_parameter_name = "staging-parameter"  
#VPC
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones   = ["eu-west-2a", "eu-west-2b"]