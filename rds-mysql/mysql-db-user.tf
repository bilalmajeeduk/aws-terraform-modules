# https://registry.terraform.io/providers/petoju/mysql/latest/docs

# create new db user
resource "mysql_user" "jdoe" {
  user               = "jdoe"
  host               = "%"  # user can connect from specific host, ip ranges but with % it can connect from any host
  plaintext_password = "password"
}


# connect to the db user with this command
# install myql client for terminal or use mysql workbench or whatever you prefer. 
# mysql -h ENDPOINT_OF_RDS_INSTANCE_HERE -u jdoe -p