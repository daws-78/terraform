resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-01b2eb68307cc0523"]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}