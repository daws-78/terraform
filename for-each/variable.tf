variable instance_names {
    type    = map
    default = {
        db      = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        project = "Expense"
        Terraform = "true"
    }
  }

  variable "domain_name" {
    default = "daws78s.tech"
}

variable "zone_id" {
    default = "Z0021454Z17P14COILFU"
}