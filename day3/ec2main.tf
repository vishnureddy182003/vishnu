# create instance 

resource "aws_instance" "dev" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.dev.id
    key_name ="vishnukey"
    tags = {
      Name = "dev-ec2"
    }
}