resource "aws_instance" "terraform" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
    key_name = "vishnukey"
    count = length(var.test) #it will print 3
    
  tags = {
    #Name = "dev-1"
    #Name = "web-${count.index}"
    Name= var.test[count.index]
  }
}

variable "test" {
    type = list(string)
    default = [ "dev","prod"]
  
}
