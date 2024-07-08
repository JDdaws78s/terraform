resource "aws_instance" "db" {
    count = 3
    ami = "ami-031d574cddc5bb371"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"

    tags = {
        Name = var.instance_name[count.index]
    }

}

resource "aws_security_group" "allow_ssh" {
    name        = "allow_ssh_full"
    description = "allow ssh access" 
    
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means opening all ports
        to_port          = 0
        protocol         = "-1" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        created_by = "suresh"
    }
}