

# Resource: EC2 Instance
resource "aws_instance" "myec2" {
    ami = "ami-0574da719dca65348"
    
    #instance_type = var.instance_type
    instance_type = var.instance_type_list[1]       #for list
    #instance_type = var.instance_type_map["prod"]    #for map
    user_data = file("${path.module}/minikubescript.sh")

    key_name = var.instance_keypair

    vpc_security_group_ids = [
        aws_security_group.vpc-ssh.id,
        aws_security_group.vpc-web.id
    ]
    #count = 4

   


    tags = {
      "Name" = "for-loop-practice-instance"
    }
  
}

