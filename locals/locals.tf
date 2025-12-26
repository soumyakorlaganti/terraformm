locals {
    ami_id = "ami-09c813fb71547fc4f"
    sg_id = "sg-06bdc5870b2b72579" #replace with our sg id
    #instance_type = "t3.micro"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    tags = {
        Name = "locals"
    }
}