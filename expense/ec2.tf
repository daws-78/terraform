# resource <resource-type> <resource-name>
resource "aws_instance" "expense"{
    count = length(var.instance_names)
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] =="db" ? "t3.small" : "t3.micro"
    #left side things are called as arguments,right side are values.
    tags = merge(
        var.common_tags,
        {
        Name = var.instance_names[count.index]
        module = var.instance_names[count.index]
        } 
    )
        
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"

    # this is block
    ingress {
        from_port        =  22
        to_port          =  22
        protocol         =  "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      =  ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Swetha"
    }
}
