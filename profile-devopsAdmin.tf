### DEVOPS ADMIN ###

# CREATE GROUP
resource "aws_iam_group" "devopsAdmin-group" {
  name = "DevopsAdmin"
}

# CREATE ROLE
resource "aws_iam_role" "devopsAdmin-role" {
  name = "${local.tfsettings.prefix}DevOpsAdmin"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Action    = "sts:AssumeRole",
        Principal = { "AWS" : "${local.tfsettings.accountnumber}" }
        # Condition = {
        #   "Bool" : {
        #     "aws:MultiFactorAuthPresent" : true
        #   }
        # }
    }]
  })
}

# Attach the AWS-AdministratorAccess-Policy to DevOpsAdmin-Role
resource "aws_iam_role_policy_attachment" "admin-group-policy-attachment" {
  role       = aws_iam_role.devopsAdmin-role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}


# Policy to Assume DevOpsAdminRole 
resource "aws_iam_policy" "assume-devopsAdmin-policy" {
  name        = "${local.tfsettings.prefix}AssumeDevOpsAdmin"
  description = "Allow assuming the DevOps Admin role"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "sts:AssumeRole",
        Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}DevOpsAdmin"
    }]
  })
}

# Assign the AssumeDevOpsAdmin to DevOpsAdminRole
resource "aws_iam_group_policy_attachment" "admin-group-policy-attachment" {
  group      = aws_iam_group.devopsAdmin-group.name
  policy_arn = aws_iam_policy.assume-devopsAdmin-policy.arn
}









