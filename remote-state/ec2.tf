resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-06bdc5870b2b72579"]
    instance_type = "t3.micro"
    subnet_id     = "subnet-010df2eedef9cf7a9"

    tags = {
        Name = "db"
    }
}

