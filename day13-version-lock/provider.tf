#terraform {
  #required_providers {
    #aws = {
    #  source  = "hashicorp/aws"
   #   version = "~> 3.0"  # Adjust this version constraint as needed
  #  }
 # }
#}


provider "aws" {
  region = "ca-central-1"
}

#run terraform providers command to check version just for provider version identification


### ----- below example for specifi version range we can take ---- ####
 terraform {
   required_providers {
     aws = {
       source  = "hashicorp/aws"
       version = ">= 4.10.0, < 5.0.0"
     }
   }
 }

# provider "aws" {
#   region = "us-east-1"
# }