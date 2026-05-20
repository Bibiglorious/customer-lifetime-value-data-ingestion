terraform {
  backend "s3" {
    bucket = "clv-bucket-data-ingestion" 
    key    = "StateFile/StateFile.tfstate"
    region = "eu-north-1"
  
}
}