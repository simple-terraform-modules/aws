output "arn" {
  value       = aws_s3_bucket.bucket.arn
  description = "The bucket ARN"
}

output "id" {
  value       = aws_s3_bucket.bucket.id
  description = "The bucket ID"
}
