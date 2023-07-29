variable "awsRegion" {
  type = string
  default = "us-east-1"
}

variable "config_recorder_name" {
  type = string
  default = "rca-awsconfig-default-recorder"
}

variable "config_role_name" {
  type = string
  default = "awsconfig-role"
}

variable "config_channel_name" {
  type = string
  default = "rca-awsconfig-default-channel"
}

variable "config_bucket_name" {
  type = string
  default = "rca-resource-update-awsconfig"
}

variable "config_policy_name" {
  type = string
  default = "awsconfig-s3-sns-full-access"
}

variable "sns_topic_name" {
  type = string
  default = "management-updates"
}

variable "email_list" {
  type = list(string)
  description = "List of emails who will receive the notification based on cloudwatch alarm"
  default = ["test@test.com"]
}