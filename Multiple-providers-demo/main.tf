data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "east" {
  for_each = var.buckets_east
  bucket   = "${each.value}-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name         = "${each.key}-prod-buckets"
    Environnment = "prod"
  }
}

resource "aws_s3_bucket" "west" {
  provider = aws.west
  for_each = var.buckets_west
  bucket   = "${each.value}-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name         = "${each.key}-prod-buckets"
    Environnment = "prod"
  }
}