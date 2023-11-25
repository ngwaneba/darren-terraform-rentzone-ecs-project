# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "darren-terraformstate"
    key            = "rentzone-ecs/terraform.tfstate"
    region         = "us-east-1"
    profile        = "jayden-terraform"
    dynamodb_table = "darren-terraformstate-lock"
  }
}