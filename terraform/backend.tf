# Remote state backend (S3)
#
# Bootstrapping order:
#   1. On the FIRST run, leave this backend block commented out and run:
#        terraform init
#      Terraform will use local state. Then create the resources with:
#        terraform apply
#      (Create the state bucket here, or provision it separately.)
#
#   2. Once an S3 bucket exists to hold state, fill in the values below,
#      uncomment the block, and migrate the local state into S3:
#        terraform init -migrate-state
#
#   3. All subsequent runs use the S3 backend automatically.
#
# NOTE: the bucket referenced here must already exist — Terraform does not
# create the backend bucket for you.

# terraform {
#   backend "s3" {
#     bucket       = "portfolio-site-tfstate"   # existing state bucket
#     key          = "portfolio-site/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true                         # S3-native state locking (Terraform >= 1.10)
#   }
# }
