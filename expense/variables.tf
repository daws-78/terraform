#ec2 variables
variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}
variable "image_id" {
type = string
default = "ami-090252cbe067a9e58" #optional
description = "RHEL-9 AMI ID" #optional
}

variable  "instance_type" {
    default = "t3.micro"
    type = string
}

variable "common_tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
       Terraform = "true"
    }
}
#sg variables
variable "sg_name" {
    default = "allow_ssh"
  }

variable "sg_description" {
    default = "allowing port 22"
  }

  variable "ssh_port" {
    default = 22
  }
  variable "protocol" {
    default = "tcp"
  }

  variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
    
  }

  #r53 variables
  variable "zone_id" {
    default ="Z0021454Z17P14COILFU"
  }

  variable "domain_name" {
    default = "daws78s.tech"
  }