variable "image_id" {
  type = string
  default = "ami-031d574cddc5bb371"
}


variable "instance_type" {
  type = string
  default = "t2.micro"
}


variable "tags" {
  type = map
  default = {
    Name = "DB"
    project = "Expense"
    Environment ="Dev"
  }
}

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