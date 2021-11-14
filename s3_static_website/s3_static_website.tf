resource "aws_s3_bucket" "bucket" {
  tags = var.tags

  bucket        = var.name
  force_destroy = var.force_destroy

  website {
    index_document = var.index_document
    error_document = var.error_document
  }
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket.id
  policy = templatefile("${path.module}/bucket_policy.json", {bucket = aws_s3_bucket.bucket.arn})
}
