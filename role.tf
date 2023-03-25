# # Intern Role
# resource "aws_iam_role" "intern-role" {
#   name = "${local.tfsettings.prefix}Intern"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "intern-group-policy-attachment" {
#   role       = aws_iam_role.intern-role.name
#   policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
# }

# # Application Developer

# resource "aws_iam_role" "appdev-role" {
#   name = "${local.tfsettings.prefix}AppDeveloper"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "appdev-group-policy-attachment" {
#   role       = aws_iam_role.appdev-role.name
#   policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
# }

# #DevOps Engineer Support

# resource "aws_iam_role" "devops-role" {
#   name = "${local.tfsettings.prefix}DevOps"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "devops-group-policy-attachment" {
#   role       = aws_iam_role.devops-role.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonDevOpsGuruFullAccess"
# }

# #Kubernetes Engineer

# resource "aws_iam_role" "kubernetes-role" {
#   name = "${local.tfsettings.prefix}Kubernetes"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "kubernetes-group-policy-attachment" {
#   role       = aws_iam_role.kubernetes-role.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
# }

# #Backend Developer

# resource "aws_iam_role" "backenddev-role" {
#   name = "${local.tfsettings.prefix}BackendDev"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "backenddev-group-policy-attachment" {
#   role       = aws_iam_role.backenddev-role.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
# }

# #Frontend Developer

# resource "aws_iam_role" "frontenddev-role" {
#   name = "${local.tfsettings.prefix}FrontEndDev"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "frontenddev-group-policy-attachment" {
#   role       = aws_iam_role.frontenddev-role.name
#   policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
# }

# #Terraform Developer

# resource "aws_iam_role" "terraform-role" {
#   name = "${local.tfsettings.prefix}Terraform"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "terraform-group-policy-attachment" {
#   role       = aws_iam_role.terraform-role.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
# }


# #Cloud Auditor

# resource "aws_iam_role" "cloudauditor-role" {
#   name = "${local.tfsettings.prefix}CloudAuditor"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "cloudauditor-group-policy-attachment" {
#   role       = aws_iam_role.cloudauditor-role.name
#   policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
# }

# #GSyncITS3

# resource "aws_iam_role" "gsyncit-role" {
#   name = "${local.tfsettings.prefix}GSyncIT"
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect    = "Allow",
#         Action    = "sts:AssumeRole",
#         Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "gsyncit-group-policy-attachment" {
#   role       = aws_iam_role.gsyncit-role.name
#   policy_arn = aws_iam_policy.gsyncit-policy.arn
# }

