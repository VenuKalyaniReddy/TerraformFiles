resource "aws_security_group" "roboshop-all" {
    name = var.sg-name
    description = var.sg-description
    ingress {
        description = "Allow all parts"
        from_port = "var.inbount-from-port"
        to_port = 0
        protocol = "tcp"
        cidr_block = var.cidr_blocks
    
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0"]
    }
  
}