# Import existing resources from the AWS cloud

This repo is importing existing resources from AWS cloud and then customise here in the terraform 

---

### key Notes: 


terraform init

**terraform plan -generate-config-out=genterated-config.tf**
it will put that plan in the file generated-config.tf

Error: Target generated file already exists
Terraform can only write generated config into a new file. Either choose a different target location or move all existing
configuration out of the target file, delete it and try again.
