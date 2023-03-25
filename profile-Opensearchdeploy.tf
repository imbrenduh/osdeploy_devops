### DEVOPS ADMIN ###

# CREATE GROUP
resource "aws_iam_group" "opensearchdeploy-group" {
  name = "OpensearchDeploy"
}

# CREATE ROLE
resource "aws_iam_role" "opensearchdeploy-role" {
  name = "${local.tfsettings.prefix}OpensearchDeploy"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "opensearch.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Attach the AWS-AdministratorAccess-Policy to Opensearchdeploy-Role
resource "aws_iam_role_policy_attachment" "opensearchdeploy-group-policy-attachment" {
  role       = aws_iam_role.opensearchdeploy-role.name
  policy_arn = aws_iam_policy.assume-OpensearchDeploy-policy.arn
}


# Policy to Assume OpenSearchRole 
resource "aws_iam_policy" "assume-OpensearchDeploy-policy" {
  name        = "${local.tfsettings.prefix}AssumeOpensearchDeploy"
  description = "Allow assuming the OpensearchDeploy role"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "sts:AssumeRole",
        Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}OpensearchDeploy"
      },


      {
        Effect: "Allow",
    Action: [
        "es:ESHttp*",
        "es:List*",
        "es:Describe*",
        "es:Create*",
        "es:Delete*"
    ],
    Resource: "*"
},
{
    Effect: "Deny",
    Action: [
        "es:DescribeElasticsearchDomains",
        "es:DescribeReservedElasticsearchInstances",
        "es:DescribeElasticsearchDomainsConfig",
        "es:DescribeReservedElasticsearchInstances"
        
    ],
    Resource: "*"
},

      {
  Effect: "Allow",
  Action: [
    "s3:*"
  ],
  Resource: [
    "arn:aws:s3:::opensearch-backups",
    "arn:aws:s3:::opensearch-backups/*"
  ]
},
      {
            Sid: "ACMListCertificates",
            Effect: "Allow",
            Action: [
                "acm:ListCertificates"
            ],
            Resource: "*"
        },
        {
            Sid: "ACMRequestCertificate",
            Effect: "Allow",
            Action: [
                "acm:RequestCertificate"
            ],
            Resource: "*"
        },
        {
            Sid: "ACMDescribeCertificate",
            Effect: "Allow",
            Action: [
                "acm:DescribeCertificate"
            ],
            Resource: "*"
        },
        {
            Sid: "ACMExportCertificate",
            Effect: "Allow",
            Action: [
                "acm:ExportCertificate"
            ],
            Resource: "*"
        },
        {
            Sid: "ACMDeleteCertificate",
            Effect: "Allow",
            Action: [
                "acm:DeleteCertificate"
            ],
            Resource: "*"

    }]
  })
}

# Assign the AssumeOpensearchDeploy to OpensearchDeploy Group
resource "aws_iam_group_policy_attachment" "opensearchdeploy-group-policy-attachment" {
  group      = aws_iam_group.opensearchdeploy-group.name
  policy_arn = aws_iam_policy.assume-OpensearchDeploy-policy.arn
  
}