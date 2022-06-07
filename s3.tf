resource "aws_s3_bucket" "b" {
  bucket = "testing-bucket-codin"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "public-read"
  
}

resource "aws_s3_bucket_object" "object" {
  bucket = "testing-bucket-codin"
  key    = "index.html"
  source = "C:\\Users\\Sugashini Lakshmanan\\Documents\\terraform\\html\\index.html"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("C:\\Users\\Sugashini Lakshmanan\\Documents\\terraform\\html\\index.html")
}

