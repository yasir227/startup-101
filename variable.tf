
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default = "startup-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "az" {
  description = "backup zones of the region"
  type        = list(string)
  default     = ["us-west-1b"]
}

variable "private_subnet" {
  description = "The CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_subnet" {
  description = "The CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.101.0/24"]
}

variable "enable_nat_gateway" {
  description = "Whether to enable the NAT gateway"
  type        = bool
  default     = true
}

variable "enable_vpn_gateway" {
  description = "Whether to enable the VPN gateway"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default     = {
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t3.small"
}

variable "key_name" {
  description = "Key name to access the EC2 instance"
  type        = string
  default     = "alimul"
}

variable "monitoring" {
  description = "for ec2"
  type        = bool
  default     = true
}

variable "vpc_security_group_ids" {
  description = "Security group for the EC2 instance"
  type        = list(string)
  default     = ["sg-0666b1f5df041a3c1"]
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
  default     = "subnet-04203ee05cec6fe30"
}

variable "ec2_tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default     = {
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "startup-s3-bucket"
}

variable "acl" {
  description = "The access control list (ACL) for the bucket"
  type        = string
  default     = "private"
}

variable "control_object_ownership" {
  description = "Enable control object ownership on the bucket"
  type        = bool
  default     = true
}

variable "object_ownership" {
  description = "The object ownership setting"
  type        = string
  default     = "ObjectWriter"
}

variable "iam_role_name" {
  description = "The name of the IAM role for EC2"
  type        = string
  default     = "ec2_s3_access_role"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to access"
  type        = string
  default     = "startup-s3-bucket"
}

variable "iam_policy_name" {
  description = "The name of the IAM policy for S3 access"
  type        = string
  default     = "S3AccessPolicy"
}

variable "iam_policy_description" {
  description = "The description of the IAM policy"
  type        = string
  default     = "Policy for EC2 to access S3 bucket"
}


