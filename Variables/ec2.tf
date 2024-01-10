resource "aws_instance" "web" {
    ami = "ami-03265a0778a880afb" #devops-practice
    instance_type= "t2.micro"
    vpc_security_group_ids = [ aws_security_group.roboshop-all.id ] # this means list

    #    tag = {
    #    Name = "Terraform"
    #     }


#security Group

resource "aws_security_group"  "roboshop-all"  {
name ="roboshop-all-aws"
description = "Allow TLS inbound traffic"

}

#inbound rule

ingress {

    description = "Allow all ports"
    from_port = 0
    to_port = 0
    Protocol = "tcp"
    cidr_block = ["0.0.0.0/0"]
} 


#outbound rules

 egress {
    from_port = 0
    to_port =0
    Protocol = -1
    cidr_block = ["0.0.0.0/0"]
 }

 tags = {
     Name = "Roboshop-all-aws"
 }

}
 