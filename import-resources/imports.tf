import {
    to = aws_rds_cluster.aurora_cluster # which type of resource and its name or address
    id = "CLUSTER_NAME_HERE" # DB identifier --- this is the one we created in the console.
}

import {
        to = aws_s3_bucket.my_bucket # which type of resource and its name or address
        id = "BUCKET_NAME_HERE" # S3 bucket name --- this is the one we created in the console.
    }

# terraform init
# it will put that plan in the file generated-config.tf
# terraform plan -generate-config-out=genterated-config.tf

# │ Error: Target generated file already exists
# │ 
# │ Terraform can only write generated config into a new file. Either choose a different target location or move all existing
# │ configuration out of the target file, delete it and try again.