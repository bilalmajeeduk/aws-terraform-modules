# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "my-aurora-cluster"
resource "aws_rds_cluster" "aurora_cluster" {
  allocated_storage                     = 1
  allow_major_version_upgrade           = null
  apply_immediately                     = null
  availability_zones                    = ["us-east-1a", "us-east-1b", "us-east-1d"]
  backtrack_window                      = 0
  backup_retention_period               = 1
  ca_certificate_identifier             = null
  cluster_identifier                    = "my-aurora-cluster"
  cluster_identifier_prefix             = null
  cluster_members                       = ["my-aurora-cluster-instance-1"]
  copy_tags_to_snapshot                 = true
  database_name                         = null
  db_cluster_instance_class             = null
  db_cluster_parameter_group_name       = "default.aurora-mysql8.0"
  db_instance_parameter_group_name      = null
  db_subnet_group_name                  = "default-vpc-xxxx"
  db_system_id                          = null
  delete_automated_backups              = true
  deletion_protection                   = false
  domain                                = null
  domain_iam_role_name                  = null
  enable_global_write_forwarding        = null
  enable_http_endpoint                  = false
  enable_local_write_forwarding         = null
  enabled_cloudwatch_logs_exports       = []
  engine                                = "aurora-mysql"
  engine_lifecycle_support              = "open-source-rds-extended-support-disabled"
  engine_mode                           = "provisioned"
  engine_version                        = "8.0.mysql_aurora.3.05.2"
  final_snapshot_identifier             = null
  global_cluster_identifier             = null
  iam_database_authentication_enabled   = false
  iam_roles                             = []
  iops                                  = 0
  kms_key_id                            = "arn:aws:kms:us-east-1:xxx:key/ab1b19xxx"
  manage_master_user_password           = null
  master_password                       = null # sensitive
  master_user_secret_kms_key_id         = null
  master_username                       = "admin"
  network_type                          = "IPV4"
  performance_insights_enabled          = false
  performance_insights_kms_key_id       = null
  performance_insights_retention_period = 0
  port                                  = 3306
  preferred_backup_window               = "05:56-06:26"
  preferred_maintenance_window          = "fri:08:08-fri:08:38"
  replication_source_identifier         = null
  skip_final_snapshot                   = true
  snapshot_identifier                   = null
  source_region                         = null
  storage_encrypted                     = true
  storage_type                          = null
  tags = {
            Owner       = "genterated-file"
            Environment = "stage"
            test        = "import_feature_from_genterated_file"
        }
  tags_all                              = {}
  vpc_security_group_ids                = ["sg-0a3xxx"]
}
