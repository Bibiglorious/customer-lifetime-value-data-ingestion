# resource "aws_vpc" "clv-vpc" {
#   cidr_block = "10.0.0.0/16"
# }

# resource "aws_subnet" "clv-subnet-1" {
#   vpc_id     = aws_vpc.clv-vpc.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "clv-subnet-1"
#   }
#   region = "eu-north-1"

# }

# resource "aws_subnet" "clv-subnet-2" {
#   vpc_id     = aws_vpc.clv-vpc.id
#   cidr_block = "10.0.2.0/24"

#   tags = {
#     Name = "clv-subnet-2"
#   }
#   region = "eu-north-1"

# }

# resource "aws_security_group" "clv-sg" {
#   name        = "clv-sg"
#   description = "Allow inbound traffic and all outbound traffic"
#   vpc_id      = aws_vpc.clv-vpc.id

#   tags = {
#     Name = "clv-sg"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "clv-ingress" {
#   security_group_id = aws_security_group.clv-sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 443
#   to_port           = 443
#   ip_protocol       = "tcp"
# }

# resource "aws_vpc_security_group_egress_rule" "clv-egress" {
#   security_group_id = aws_security_group.clv-sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1"
# }

# resource "aws_iam_role" "access_role" {
#   name = "clv_role"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Sid    = ""
#         Principal = {
#           Service = "rds.amazonaws.com"
#         }
#       },
#     ]
#   })

#   tags = {
#     name = "clv_role"
#   }
# }

# resource "aws_iam_role_policy" "clv_policy" {
#   name = "clv_policy"
#   role = aws_iam_role.access_role.id

#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#           "rds:*",
#         ]
#         Effect   = "Allow"
#         Resource = "*"
#       },
#     ]
#   })

# }


