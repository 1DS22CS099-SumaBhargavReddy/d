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

Step 3: Initialize Terraform: execute following command on VS code terminal :

terraform init

This sets up Terraform in the folder and downloads necessary provider plugins.
Step 4: Preview the Plan

terraform plan

This shows what Terraform will create.
Step 5: Apply the Configuration

terraform apply

When prompted, type yes to confirm. Terraform will create the EC2 instance.
Step 6: Verify
Go to your AWS Console → EC2 → Instances, and you’ll see the instance running.
Step 7: Destroy When Done (to avoid charges)

terraform destroy
