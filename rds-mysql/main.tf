terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
        }

        mysql = { 
        source = "petoju/mysql" # a petoju Terraform provider for managing MySQL databases
        version = "3.0.48"
    }
 }
}
  


provider "mysql" {
  endpoint = "rds-mysql.cjxjxjxjxjxj.us-east-1.rds.amazonaws.com" # change this to your rds endpoint.
  username = "admin"
  password = "admin123" # Change this to a secure password and don't commit it to version control and use a aws secrets manager or vault.
}

