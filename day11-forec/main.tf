resource "aws_instance" "test" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
    availability_zone = "ca-central-1a"
    key_name = "vishnukey"
    for_each = toset(var.test)
    
  tags = {
    #Name = "dev-1"
    Name = each.value
    
  }
}

variable "test" {
    type = list(string)
    default = [ "dev","prod"]
  
}