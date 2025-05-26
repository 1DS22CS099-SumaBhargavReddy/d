provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_machine" {
  ami           = "ami-0af9569868786b23a"
  instance_type = "t2.micro"
 

  tags = {
    Name = "Terra"
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-unique-s3-bucket-2025-demo-xyz123"  # <--- Change this to something globally unique

  tags = {
    Name = "upload-demo"
  }
}

resource "aws_s3_bucket_object" "text_file" {
  bucket = aws_s3_bucket.demo_bucket.bucket
  key    = "Sample.txt"
  source = "C:\\Users\\nithi\\OneDrive\\Desktop\\Sample.txt"

}