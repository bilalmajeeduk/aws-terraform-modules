resource "aws_db_instance" "mysql" {
  allocated_storage      = 10
  db_name                = "mydb"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.micro"
  username               = "admin"
  password               = "admin123" # Change this to a secure password and don't commit it to version control and use a aws secrets manager or vault. 
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.allow_rds_db_mysql_access.id]
}

data "aws_vpc" "cidr_block" {
  cidr_block = "172.31.0.0/16" # why not use the default vpc? and why use this cidr block?
}

resource "aws_security_group" "allow_rds_db_mysql_access" {
  name   = "allow_rds_mysql_access"
  vpc_id = data.aws_vpc.cidr_block.id

  ingress { 
    description = "Access MySQL"
    from_port   = 3306 # default for mysql
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # change this to a more secure value.
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  tags = {
    Name = "allow_rds_db_mysql_access"
  }
}