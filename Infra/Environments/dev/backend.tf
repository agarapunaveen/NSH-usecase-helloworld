 terraform{
   backend "s3" {
     bucket         = "nsh-usecase-3"
     key            = "dev/terraform/EKS/terraform.tfstate"
     region         = "us-east-1"
     encrypt        = true
   }
 }



