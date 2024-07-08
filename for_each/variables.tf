# ec2 variables

variable "instance_name" {
  type = map
  default = {
    db = "t3.micro"
    backend = "t2.micro"
    frontend = "t2.micro"
  }
}


variable "common_tags" {
  type = map
  default = {
    project = "Expense"
    Environment ="Dev"
    Terraform = "true"
  }
}

variable "zone_id" {
    default = "Z00959423DS9VLF5ZV3L8"
}

variable "record_name" {
    default = "sureshm.online"
}
