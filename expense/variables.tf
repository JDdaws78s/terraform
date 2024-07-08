# ec2 variables
variable "image_id" {
  type = string
  default = "ami-031d574cddc5bb371"
}

variable "instance_name" {
  type = list
  default = ["db", "backend", "frontend"]
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}


variable "common_tags" {
  type = map
  default = {
    project = "Expense"
    Environment ="Dev"
    Terraform = "true"
  }
}


# sg variables
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

variable "allow_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

#r53 variables
variable "zone_id" {
    default = "Z00959423DS9VLF5ZV3L8"
}

variable "record_name" {
    default = "sureshm.online"
}
