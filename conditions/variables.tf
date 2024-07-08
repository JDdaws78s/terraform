variable "image_id" {
  type = string
  default = "ami-031d574cddc5bb371"
}


variable "instance_type" {
  type = string
  default = "t2.micro"
}


variable "instance_name" {
    default = "backend"
}