resource "aws_instance" "dev" {
  count         = 3
  ami           = var.amis["ubuntu_us_east_1"]
  instance_type = "t2.micro"
  key_name      = "terrakey"
  tags = {
    Name = "dev${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
}

resource "aws_instance" "dev4" {
  provider = aws.us-east-2
  ami           = var.amis["ubuntu_us_east_2"]
  instance_type = "t2.micro"
  key_name      = "terrakey"
  tags = {
    Name = "dev4"
  }
  vpc_security_group_ids = ["${aws_security_group.allow_ssh-us-east-2.id}"]
  depends_on = [aws_s3_bucket.terrabucket, aws_dynamodb_table.basic-dynamodb-table]
}