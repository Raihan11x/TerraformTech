data "aws_caller_identity" "current" {}

module "vpc" {
  source = "./modules/vpc"
  # route53_hosted_zone_id = aws_route53_zone.main.id
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs

}

module "ecs" {
  source                         = "./modules/ecs"
  vpc_id                         = var.vpc_id
  ingress_cidr_alb               = var.ingress_cidr_alb
  route53_hosted_zone_id         = aws_route53_zone.main.id
  ecs_max_capacity               = var.ecs_max_capacity
  network_vpc_id                 = var.network_vpc_id
  ecs_cpu_scale_up_threshold     = var.ecs_cpu_scale_up_threshold
  ecs_cpu_scale_down_threshold   = var.ecs_cpu_scale_down_threshold
  route53_record_name            = var.route53_record_name
  task_family                    = var.task_family
  container_port                 = var.container_port
  service_name                   = var.service_name
  container_name                 = var.container_name
  subnets                        = var.subnets
  desired_count                  = var.desired_count
  alb_subnets                    = var.alb_subnets
  task_cpu                       = var.task_cpu
  security_group_id              = var.security_group_id
  alb_security_group_id          = var.alb_security_group_id
  cpu_utilization_high_threshold = var.cpu_utilization_high_threshold
  task_memory                    = var.task_memory
  container_image                = var.container_image
  ecs_min_capacity               = var.ecs_min_capacity
  domain_name                    = var.domain_name
}

module "rds" {
  source = "./modules/rds"
  # route53_hosted_zone_id = aws_route53_zone.main.id
  parameter_type                     = var.parameter_type
  secret_length                      = var.secret_length
  allocated_storage                  = var.allocated_storage
  engine                             = var.engine
  engine_version                     = var.engine_version
  subnet_ids                         = var.subnet_ids
  db_name                            = var.db_name
  ssm_parameter_name                 = var.ssm_parameter_name
  instance_class                     = var.instance_class
  security_group_id                  = var.security_group_id
  db_username                        = var.db_username
  storage_type                       = var.storage_type
  db_parameter_family                = var.db_parameter_family
  rds_instance_identifier            = var.rds_instance_identifier
  rds_cpu_utilization_high_threshold = var.rds_cpu_utilization_high_threshold
  override_special_characters        = var.override_special_characters
  parameter_name                     = var.parameter_name
}

resource "aws_route53_zone" "main" {
  name = var.domain_name
}


### Improvements with time: Create Iam role + policy with required perms for developers to carry out tasks
# data "aws_iam_policy_document" "webapi_policy" {
#   statement {
#     effect = "Allow"

#     actions = [
#       "ssm:GetParameter",
#       "ssm:GetParameters",
#       "ssm:GetParametersByPath",
#       "ssm:PutParameter"
#     ]

#     resources = ["*"]
#   }

#   statement {
#     effect = "Allow"

#     actions = [
#       "kms:Decrypt"
#     ]

#     resources = [
#       "*"
#     ]
#   }

#   statement {
#     effect = "Allow"

#     actions = [
#       "rds:*"
#     ]

#     resources = [
#       "*"
#     ]
#   }

#   statement {
#     effect = "Allow"

#     actions = [
#       "codepipeline:*"
#     ]

#     resources = [
#       "*"
#     ]
#   }
# }


# resource "aws_iam_role" "webapi_role" {
#   name               = "web-api-instance-role-${var.env_name}"
#   assume_role_policy = data.aws_iam_policy_document.webapi_assume_role_policy.json
# }

# resource "aws_iam_policy" "webapi_policy" {
#   name   = "web-api-instance-policy-${var.env_name}"
#   policy = data.aws_iam_policy_document.webapi_policy.json
# }

# resource "aws_iam_role_policy_attachment" "webapi_policy_attachment" {
#   role       = aws_iam_role.webapi_role.name
#   policy_arn = aws_iam_policy.webapi_policy.arn
# }