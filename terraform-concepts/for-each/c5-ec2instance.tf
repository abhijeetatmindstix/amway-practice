

# Resource: EC2 Instance
resource "aws_instance" "myec2" {
    ami = data.aws_ami.amzlinux2.id

    #instance_type = var.instance_type
    instance_type = var.instance_type_list[0]       #for list
    #instance_type = var.instance_type_map["prod"]    #for map
    user_data = file("${path.module}/app2-install.sh")

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

