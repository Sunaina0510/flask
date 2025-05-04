provider aws{
    region = "ap-northeast-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "samplebuckets00000"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}