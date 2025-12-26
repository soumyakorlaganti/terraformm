# resource <resource-type> <resource-name>
resource "aws_instance" "db" {
    
    ami = local.ami_id
    vpc_security_group_ids = [local.sg_id]
    instance_type = local.instance_type
    subnet_id     = "subnet-010df2eedef9cf7a9"
    tags = local.tags
    
}

