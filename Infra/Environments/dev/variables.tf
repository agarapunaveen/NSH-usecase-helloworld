# ------------------------------
# VPC Variables
# ------------------------------
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# ------------------------------
# ECR Variables
# ------------------------------
# variable "repo_name" {
#   description = "ECR repository name"
#   type        = string
# }

variable "image_url_patient" {
  description = "The URL of the patient service Docker image in ECR"
  type        = string
}

# In the variables.tf of the EKS module

variable "image_url" {
  description = "The URL of the Appointment service Docker image in ECR"
  type        = string

}

# ------------------------------
# Lamds Cluster Variables
# ------------------------------





