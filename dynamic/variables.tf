variable "sg_name" {
    type = string
    default = "dynamic_sg"
}

variable "inbound_rules" {
    type = list
    default = [
        {
            port             = 22 # from 0 to 0 means opening all ports
            protocol         = "tcp" # -1 means all protocols
            cidr_blocks      = ["0.0.0.0/0"]
        },

        {
            port             = 80 # from 0 to 0 means opening all ports
            protocol         = "tcp" # -1 means all protocols
            cidr_blocks      = ["0.0.0.0/0"]
        },

        {
            port             = 8080 # from 0 to 0 means opening all ports
            protocol         = "tcp" # -1 means all protocols
            cidr_blocks      = ["0.0.0.0/0"]
        },

        {
            port             = 3306 # from 0 to 0 means opening all ports
            protocol         = "tcp" # -1 means all protocols
            cidr_blocks      = ["0.0.0.0/0"]
        }
    ]
  
}