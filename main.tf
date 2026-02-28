resource "aws_instance" "ec2" {
 instance_type = var.instance_type
 ami = var.ami 

 tags = { 
  Name = "Test" 
}
}
resource "aws_s3_bucket" "best1" {
   bucket = "vinithaprakbharhclhyd"
 }
resource "aws_s3_bucket_versioning" "version" {
  bucket = aws_s3_bucket.best1.id 
  versioning_configuration {
    status = "Enabled"
  }
}
