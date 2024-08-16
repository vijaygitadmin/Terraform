terraform {
  backend "s3" {
    bucket         = "admin-s3-statefile" 
    key            = "terraform/state.tfstate"    
    region         = "us-east-1"                 
  }
}
