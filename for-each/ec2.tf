resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-06bdc5870b2b72579"] # replace with our SG ID
    instance_type = each.value  
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}