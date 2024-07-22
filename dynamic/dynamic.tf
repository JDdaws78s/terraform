resource "aws_security_group" "allow_ports" {
    name        = var.sg_name
    description = "allow ports 22, 80, 8080, 3306"
    
    #this is block
    dynamic "ingress" {
        for_each = var.inbound_rules
        content {
            from_port        = ingress.value["port"]    #each.value[<key-name>]
            to_port          = ingress.value["port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["cidr_blocks"]

        }
        
    }

    egress {
        from_port        = 0 # from 0 to 0 means opening all ports
        to_port          = 0
        protocol         = "-1" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ports"
        created_by = "suresh"
    }
}