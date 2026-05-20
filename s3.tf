# resource "aws_s3_bucket" "clv-bucket" {
#   bucket = "clv-create-bucket"

#   tags = {
#     Name        = local.Name
#     Environment = local.Environment
#     Managed_by  = local.Managed_by
#     Team        = local.Team
#   }
# }