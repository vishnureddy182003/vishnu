resource "aws_instance" "dev" {
    ami = "066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "vishnukey"

}