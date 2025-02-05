############################################

# took seven minutes to create the RDS instance.
# this code doesn't deploy on cloudguru sandbox(SCP error), but it does deploy on my personal aws account.

############################################


module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = "mydb" #The name of the RDS instance	

  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t3.micro"
  allocated_storage = 5

  db_name  = "mydb"
  username = "admin"
  port     = "3306"

  iam_database_authentication_enabled = true #Specifies whether or not the mappings of IAM accounts to database accounts are enabled

  # If no custom security group is specified, AWS automatically assigns the default security group of the VPC where the RDS instance is being created.
# The default security group usually has no inbound rules, which means 
  vpc_security_group_ids = [module.security_group.security_group_id] #can create new sg in vpc or use existing one and update accordingly. 

#   maintenance_window = "Mon:00:00-Mon:03:00" # not required
#   backup_window      = "03:00-06:00"        # not required

  # it will create monitoring in aws cloudwatch.

#   monitoring_interval    = "30"
#   monitoring_role_name   = "MyRDSMonitoringRole"
#   create_monitoring_role = true

 # IAM Role for RDS Authentication
  monitoring_role_arn = aws_iam_role.rds_role.arn

  tags = {
    Owner       = "admin"
    Environment = "dev"
  }

  # if not specified, it will be created in the default VPC
  create_db_subnet_group = false # not required # if true then needs subnet_ids
#   subnet_ids             = ["subnet-049d32ba2455b9416", "subnet-0052b39c32d9c995c"]

  # The family of the DB parameter group
  family = "mysql5.7"

  # DB option group
  major_engine_version = "5.7"

  # Database Deletion Protection
  deletion_protection = false # not required 

}

#create the iam role and policy names etc for the git
resource "aws_iam_role" "role_rds_mysql" {
  name = "rds-mysql-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "rds.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "role_rds_mysql" {
  name        = "RDSFullAccessPolicy"
  description = "IAM policy for RDS creation and management"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "rds:CreateDBInstance",
          "rds:DescribeDBInstances",
          "rds:ModifyDBInstance",
          "rds:DeleteDBInstance",
          "rds:CreateDBSubnetGroup",
          "rds:DescribeDBSubnetGroups",
          "rds:ListTagsForResource",
          "iam:PassRole"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "rds_attach" {
  policy_arn = aws_iam_policy.role_rds_mysql.arn
  role       = aws_iam_role.role_rds_mysql.name
}


#use this code if you dont have the sg created.
#better to use it with the vpc module or use the default vpc for testing purposes only.

module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"
  name        = "mysql_sg_rds"
  description = "security group for mysql rds"
#   vpc_id      = module.vpc.vpc_id

  # ingress
  ingress_with_cidr_blocks = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      description = "MySQL access from within VPC"
    #   cidr_blocks = module.vpc.vpc_cidr_block
      cidr_blocks = "172.31.0.0/16" # this is default vpc cidr block
    },
  ]

  tags = {
    Name = "testing mysql rds security group with new sg or can use default vpc sg"
  }
}