resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-demo-bucket"
}

resource "aws_s3_bucket_object" "my_object" {
  bucket  = aws_s3_bucket.my_bucket.bucket
  key     = "index.html"
  content = "<h1>Hello from LocalStack!</h1>"
}

resource "aws_instance" "nginx" {
  ami           = "ami-0a7c483d38fcb90c3"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.demo_key.key_name

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "nginx-demo"
  }
}

resource "aws_key_pair" "demo_key" {
  key_name   = "demo-key"
  public_key = file(var.public_key_path)
}

output "instance_public_ip" {
  value = aws_instance.nginx.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}
