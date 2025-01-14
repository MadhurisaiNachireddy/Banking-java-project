terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
       }
     }
   }
 provider "aws" {
   region = "ap-south-2"
 }

 resource "aws_instance" "Prod-Server" {
   ami               = "ami-0183d80552093ddaf"
   instance_type     = "t3.micro"
   availability_zone = "ap-south-2c"
   key_name          = "bank"
    
   tags = {
     name = "terraform"
     }
 }
