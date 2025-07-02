output "cloudtrail_name" {
  value = aws_cloudtrail.main.name
}

output "s3_bucket" {
  value = aws_s3_bucket.cloudtrail_logs.bucket
}
