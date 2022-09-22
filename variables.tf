# AWS S3-based remote state storage
#
variable "tf_state_s3_bucket_name" {
  description = "Name of the AWS S3 bucket containing our Terraform state"
  type        = string
  default     = "pankusha-tf-state"
}

# Infrastructure variables
#
variable "instance_name" {
  description = "Value of the Name Tag gor the EC2 instance"
  type        = string
  default     = "EbuchayaHuinya2"
}
