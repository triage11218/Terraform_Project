provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "RHEL-Server" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.micro"
  key_name      = "Triage_KeyPair"
  tags = {
    Name = "RHEL-Server"
  }
  root_block_device {
    volume_size = 15 
    volume_type = "gp3"
    encrypted   = true
  }

}
