# Input Variable
 
# AWS Region
variable "aws_region" {
  description = "Region in which aws resource will be created"
  type = string
  default = "us-east-1"
}



variable "environment" {
  default = "dev"
}
# AWS Ec2 Instance Type 
variable "instance_type" {
  description = "Ec2 instance type"
  type = string
  default = "t2.medium"
}

# AWS Ec2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS Ec2  key pair"
  type = string
  default = "N. Virginia_key"
}






# AWS Ec2 Instance Type - List
variable "instance_type_list" {
  description = "Ec2 instance type"
  type = list(string)
  default = [ "t2.micro","t2.medium" ]
  
}
# AWS Ec2 Instance Type - Map
variable "instance_type_map" {
  description = "ec2 instance type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa"  = "t3.small"
    "prod"= "t3.large" 
  }
  
} 
 