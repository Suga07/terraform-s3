resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "object" {
  bucket = "testing-bucket-codin"
  key    = "index.html"
  source = "C:\\Users\\Sugashini Lakshmanan\\Documents\\terraform\\html\\index.html"
}

resource "aws_s3_object" "object1" {
  bucket = "testing-bucket-codin"
  key    = "index.html"
  source = "C:\\Users\\Sugashini Lakshmanan\\Documents\\terraform\\html\\index.html"
}

resource "aws_s3_object" "object2" {
  bucket = "testing-bucket-codin"
  key    = "index.html"
  source = "C:\\Users\\Sugashini Lakshmanan\\Documents\\terraform\\html\\index.html"
}


# # resource "aws_s3_bucket_object" "object1" {
# # for_each = fileset("C:\\Users\\Sugashini Lakshmanan\\Documents\\terraform\\html\\", "*")
# # bucket = aws_s3_bucket.b.id
# # key = each.value
# # source = "C:\\Users\\Sugashini Lakshmanan\\Documents\\terraform\\html\\${each.value}"
# # }