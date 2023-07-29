# SNS topic policy
data "aws_iam_policy_document" "sns_topic_policy" {
  policy_id = "config_access_sns"

  statement {
    effect = "Allow"
    actions = [
      "sns:Publish"
    ]

    principals {
      type        = "Service"
      identifiers = ["config.amazonaws.com"]
    }

    resources = [
      aws_sns_topic.notify_config_change.arn
    ]
  }
}

# S3 Bucket policy
data "aws_iam_policy_document" "allow_access_to_config" {
  statement {
    effect = "Allow"
    actions = [
      "s3:*"
    ]

    principals {
      type        = "Service"
      identifiers = ["config.amazonaws.com"]
    }

    resources = [
      aws_s3_bucket.aws_config.arn,
      "${aws_s3_bucket.aws_config.arn}/*",
    ]
  }
}
