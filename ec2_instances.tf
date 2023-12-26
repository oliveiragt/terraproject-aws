resource "aws_instance" "dev" {
  count         = 3
  ami           = "ami-06aa3f7caf3a30282"
  instance_type = "t2.micro"
  key_name      = "terrakey"
  tags = {
    Name = "dev${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
}

resource "aws_instance" "dev4" {
  provider = aws.us-east-2
  ami           = "ami-07b36ea9852e986ad"
  instance_type = "t2.micro"
  key_name      = "terrakey"
  tags = {
    Name = "dev4"
  }
  vpc_security_group_ids = ["${aws_security_group.allow_ssh-us-east-2.id}"]
  depends_on = [aws_s3_bucket.terrabucket, aws_dynamodb_table.basic-dynamodb-table]
}