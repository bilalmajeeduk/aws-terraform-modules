terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
        }
 }
} 

provider "aws" {
    # can do from the configurefie.tf
    
    # default_tags {
    #     tags = {
    #         Owners       = "admin"
    #         Environments = "dev"
    #         tests        = "import_feature"
    #     }
    # }
} 
