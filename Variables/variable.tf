variable "sg-name" {
  type = string
  default = "roboshop-all-aws"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
  #type = string
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type = map
  default = {
    Name = "Hello Terraform"
    Project = "Roboshop"
    Environment = "Dev"
    Component = "Web"
    Terraform = "true"
      }
}