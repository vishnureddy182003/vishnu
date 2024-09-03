provider "aws" { 
    region = "ap-northeast-1" 
   
} 
 
resource "aws_instance" "mydb" { 
    ami = "ami-07e35c3920b92d884" 
    instance_type = "t2.micro" 
    availability_zone = "ap-northeast-1" 
    key_name = "projectkey" 
     
  tags = { 
    Name = "dev_1" 
  } 
   
}
