# # ASSUME POLCIES!
# resource "aws_iam_policy" "assume-admin-policy" {
#   name        = "${local.tfsettings.prefix}AssumeAdmin"
#   description = "Allow assuming the Admin role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}Admin"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "admin-group-policy-attachment" {
#   group      = aws_iam_group.devops-admin.name
#   policy_arn = aws_iam_policy.assume-admin-policy.arn
# }

# resource "aws_iam_policy" "assume-intern-policy" {
#   name        = "${local.tfsettings.prefix}AssumeIntern"
#   description = "Allow assuming the Intern role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}Intern"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "intern-group-policy-attachment" {
#   group      = aws_iam_group.intern.name
#   policy_arn = aws_iam_policy.assume-intern-policy.arn
# }

# resource "aws_iam_policy" "assume-appdev-policy" {
#   name        = "${local.tfsettings.prefix}AssumeAppDev"
#   description = "Allow assuming the Application Developer role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}AppDev"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "appdev-group-policy-attachment" {
#   group      = aws_iam_group.appdev.name
#   policy_arn = aws_iam_policy.assume-appdev-policy.arn
# }

# resource "aws_iam_policy" "assume-devops-policy" {
#   name        = "${local.tfsettings.prefix}AssumeDevOps"
#   description = "Allow assuming the DevOps Engineer role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}DevOps"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "devops-group-policy-attachment" {
#   group      = aws_iam_group.devops.name
#   policy_arn = aws_iam_policy.assume-devops-policy.arn
# }

# resource "aws_iam_policy" "assume-kubernetes-policy" {
#   name        = "${local.tfsettings.prefix}AssumeKubernetes"
#   description = "Allow assuming the Kubernetes Engineer role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}Kubernetes"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "kubernetes-group-policy-attachment" {
#   group      = aws_iam_group.kubernetes.name
#   policy_arn = aws_iam_policy.assume-kubernetes-policy.arn
# }

# resource "aws_iam_policy" "assume-backenddev-policy" {
#   name        = "${local.tfsettings.prefix}AssumeBackendDev"
#   description = "Allow assuming the Backend Developer role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}BackendDev"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "backenddev-group-policy-attachment" {
#   group      = aws_iam_group.backenddev.name
#   policy_arn = aws_iam_policy.assume-backenddev-policy.arn
# }

# resource "aws_iam_policy" "assume-frontenddev-policy" {
#   name        = "${local.tfsettings.prefix}AssumeFrontendDev"
#   description = "Allow assuming the Frontend Developer role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}FrontendDev"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "frontenddev-group-policy-attachment" {
#   group      = aws_iam_group.frontenddev.name
#   policy_arn = aws_iam_policy.assume-frontenddev-policy.arn
# }

# resource "aws_iam_policy" "assume-terraform-policy" {
#   name        = "${local.tfsettings.prefix}AssumeTerraform"
#   description = "Allow assuming the Terraform Developer role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}Terraform"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "terraform-group-policy-attachment" {
#   group      = aws_iam_group.terraform.name
#   policy_arn = aws_iam_policy.assume-terraform-policy.arn
# }

# resource "aws_iam_policy" "assume-cloudauditor-policy" {
#   name        = "${local.tfsettings.prefix}AssumeCloudAuditor"
#   description = "Allow assuming the Cloud Auditor role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}CloudAuditor"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "cloudauditor-group-policy-attachment" {
#   group      = aws_iam_group.cloudauditor.name
#   policy_arn = aws_iam_policy.assume-cloudauditor-policy.arn
# }

# resource "aws_iam_policy" "assume-gsyncit-policy" {
#   name        = "${local.tfsettings.prefix}AssumeGSyncIT"
#   description = "Allow assuming the GSyncIT role"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}GSyncIT"
#     }]
#   })
# }

# resource "aws_iam_group_policy_attachment" "gsyncit-group-policy-attachment" {
#   group      = aws_iam_group.gsyncit.name
#   policy_arn = aws_iam_policy.assume-gsyncit-policy.arn
# }


# # INHOUSE POLICIES
# resource "aws_iam_policy" "intern-policy" {
#   name        = "${local.tfsettings.prefix}Intern"
#   description = "Access granted for Interns"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = "sts:AssumeRole",
#         Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}Intern"
#     }]
#   })
# }

# resource "aws_iam_policy" "AppDeveloper-policy" {
#   name        = "${local.tfsettings.prefix}AppDeveloper"
#   description = "Access granted for Application Developers"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#         {
#             Effect = "Allow",
#             NotAction = [
#                 "iam:*",
#                 "organizations:*",
#                 "account:*"
#             ],
#             Resource = "*"
#         },
#         {
#             Effect = "Allow",
#             Action = [
#                 "iam:CreateServiceLinkedRole",
#                 "iam:DeleteServiceLinkedRole",
#                 "iam:ListRoles",
#                 "organizations:DescribeOrganization",
#                 "account:ListRegions"
#             ],
#             Resource = "arn:aws:iam::${local.tfsettings.accountnumber}:role/${local.tfsettings.prefix}AppDeveloper"
#         }
#     ]
#   })
# }

# resource "aws_iam_policy" "devops-policy" {
#   name        = "${local.tfsettings.prefix}DevOps"
#   description = "Access granted for DevOps Engineer"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement= [
#         {
#             Sid = "DevOpsGuruFullAccess",
#             Effect = "Allow",
#             Action = [
#                 "devops-guru:*"
#             ],
#             Resource = "*"
#         },
#         {
#             Sid = "CloudFormationListStacksAccess",
#             Effect = "Allow",
#             Action = [
#                 "cloudformation:DescribeStacks",
#                 "cloudformation:ListStacks"
#             ],
#             Resource = "*"
#         },
#         {
#             Sid = "CloudWatchGetMetricDataAccess",
#             Effect= "Allow",
#             Action= [
#                 "cloudwatch:GetMetricData"
#             ],
#             Resource = "*"
#         },
#         {
#             Sid = "SnsListTopicsAccess",
#             Effect = "Allow",
#             Action = [
#                 "sns:ListTopics"
#             ],
#             Resource = "*"
#         },
#         {
#             Sid = "SnsTopicOperations",
#             Effect= "Allow",
#             Action= [
#                 "sns:CreateTopic",
#                 "sns:GetTopicAttributes",
#                 "sns:SetTopicAttributes",
#                 "sns:Publish"
#             ],
#             Resource= "arn:aws:sns:*:*:DevOps-Guru-*"
#         },
#         {
#             Sid= "DevOpsGuruSlrCreation",
#             Effect= "Allow",
#             Action="iam:CreateServiceLinkedRole",
#             Resource= "arn:aws:iam::*:role/aws-service-role/devops-guru.amazonaws.com/AWSServiceRoleForDevOpsGuru",
#             Condition = {
#                 StringLike= {
#                     "iam:AWSServiceName": "devops-guru.amazonaws.com"
#                 }
#             }
#         },
#         {
#             Sid= "DevOpsGuruSlrDeletion",
#             Effect= "Allow",
#             Action= [
#                 "iam:DeleteServiceLinkedRole",
#                 "iam:GetServiceLinkedRoleDeletionStatus"
#             ],
#             Resource= "arn:aws:iam::*:role/aws-service-role/devops-guru.amazonaws.com/AWSServiceRoleForDevOpsGuru"
#         },
#         {
#             Sid="RDSDescribeDBInstancesAccess",
#             Effect= "Allow",
#             Action= [
#                 "rds:DescribeDBInstances"
#             ],
#             Resource= "*"
#         }
#     ]
# })
# }

# resource "aws_iam_policy" "kubernetes-policy" {
#   name        = "${local.tfsettings.prefix}Kubernetes"
#   description = "Access granted for Kubernetes Engineer"
#   policy = jsonencode(
#     {
#     Version= "2012-10-17",
#     Statement= [
#         {
#             Effect= "Allow",
#             Action= [
#                 "autoscaling:DescribeAutoScalingGroups",
#                 "autoscaling:UpdateAutoScalingGroup",
#                 "ec2:AttachVolume",
#                 "ec2:AuthorizeSecurityGroupIngress",
#                 "ec2:CreateRoute",
#                 "ec2:CreateSecurityGroup",
#                 "ec2:CreateTags",
#                 "ec2:CreateVolume",
#                 "ec2:DeleteRoute",
#                 "ec2:DeleteSecurityGroup",
#                 "ec2:DeleteVolume",
#                 "ec2:DescribeInstances",
#                 "ec2:DescribeRouteTables",
#                 "ec2:DescribeSecurityGroups",
#                 "ec2:DescribeSubnets",
#                 "ec2:DescribeVolumes",
#                 "ec2:DescribeVolumesModifications",
#                 "ec2:DescribeVpcs",
#                 "ec2:DescribeDhcpOptions",
#                 "ec2:DescribeNetworkInterfaces",
#                 "ec2:DetachVolume",
#                 "ec2:ModifyInstanceAttribute",
#                 "ec2:ModifyVolume",
#                 "ec2:RevokeSecurityGroupIngress",
#                 "ec2:DescribeAccountAttributes",
#                 "ec2:DescribeAddresses",
#                 "ec2:DescribeInternetGateways",
#                 "elasticloadbalancing:AddTags",
#                 "elasticloadbalancing:ApplySecurityGroupsToLoadBalancer",
#                 "elasticloadbalancing:AttachLoadBalancerToSubnets",
#                 "elasticloadbalancing:ConfigureHealthCheck",
#                 "elasticloadbalancing:CreateListener",
#                 "elasticloadbalancing:CreateLoadBalancer",
#                 "elasticloadbalancing:CreateLoadBalancerListeners",
#                 "elasticloadbalancing:CreateLoadBalancerPolicy",
#                 "elasticloadbalancing:CreateTargetGroup",
#                 "elasticloadbalancing:DeleteListener",
#                 "elasticloadbalancing:DeleteLoadBalancer",
#                 "elasticloadbalancing:DeleteLoadBalancerListeners",
#                 "elasticloadbalancing:DeleteTargetGroup",
#                 "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
#                 "elasticloadbalancing:DeregisterTargets",
#                 "elasticloadbalancing:DescribeListeners",
#                 "elasticloadbalancing:DescribeLoadBalancerAttributes",
#                 "elasticloadbalancing:DescribeLoadBalancerPolicies",
#                 "elasticloadbalancing:DescribeLoadBalancers",
#                 "elasticloadbalancing:DescribeTargetGroupAttributes",
#                 "elasticloadbalancing:DescribeTargetGroups",
#                 "elasticloadbalancing:DescribeTargetHealth",
#                 "elasticloadbalancing:DetachLoadBalancerFromSubnets",
#                 "elasticloadbalancing:ModifyListener",
#                 "elasticloadbalancing:ModifyLoadBalancerAttributes",
#                 "elasticloadbalancing:ModifyTargetGroup",
#                 "elasticloadbalancing:ModifyTargetGroupAttributes",
#                 "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
#                 "elasticloadbalancing:RegisterTargets",
#                 "elasticloadbalancing:SetLoadBalancerPoliciesForBackendServer",
#                 "elasticloadbalancing:SetLoadBalancerPoliciesOfListener",
#                 "kms:DescribeKey"
#             ],
#             Resource= "*"
#         },
#         {
#             Effect= "Allow",
#             Action= "iam:CreateServiceLinkedRole",
#             Resource= "*",
#             Condition={
#                 StringEquals= {
#                     "iam:AWSServiceName": "elasticloadbalancing.amazonaws.com"
#                 }
#             }
#         }
#     ]
# }
#   )
# }

# resource "aws_iam_policy" "backenddev-policy" {
#   name        = "${local.tfsettings.prefix}BackendDev"
#   description = "Access granted for Backend Developers"
#   policy = jsonencode(
#     {
#     Version= "2012-10-17",
#     Statement= [
#         {
#             Action= "ec2:*",
#             Effect="Allow",
#             Resource= "*"
#         },
#         {
#             Effect= "Allow",
#             Action= "elasticloadbalancing:*",
#             Resource= "*"
#         },
#         {
#             Effect= "Allow",
#             Action= "cloudwatch:*",
#             Resource= "*"
#         },
#         {
#             Effect= "Allow",
#             Action= "autoscaling:*",
#             Resource= "*"
#         },
#         {
#             Effect= "Allow",
#             Action= "iam:CreateServiceLinkedRole",
#             Resource= "*",
#             Condition= {
#                 "StringEquals": {
#                     "iam:AWSServiceName": [
#                         "autoscaling.amazonaws.com",
#                         "ec2scheduled.amazonaws.com",
#                         "elasticloadbalancing.amazonaws.com",
#                         "spot.amazonaws.com",
#                         "spotfleet.amazonaws.com",
#                         "transitgateway.amazonaws.com"
#                     ]
#                 }
#             }
#         }
#     ]
# }
#   )
# }

# resource "aws_iam_policy" "frontenddev-policy" {
#   name        = "${local.tfsettings.prefix}FrontEndDev"
#   description = "Access granted for Frontend Developers"
#   policy = jsonencode(
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             #Sid= "CLICloudformationPolicy",
#             Effect= "Allow",
#             Action= [
#                 "cloudformation:*"
#             ],
#             Resource= [
#                 "arn:aws:cloudformation:*:*:stack/amplify-*"
#             ]
#         },
#         {
#             #Sid="CLIManageviaCFNPolicy",
#             Effect= "Allow",
#             Action= [
#                 "iam:ListRoleTags",
#                 "iam:TagRole",
#                 "iam:AttachRolePolicy",
#                 "iam:PutRolePolicy",
#                 "iam:UpdateRole",
#                 "iam:GetRole",
#                 "iam:GetPolicy",
#                 "iam:GetRolePolicy",
#                 "iam:PassRole",
#                 "iam:ListPolicyVersions",
#                 "iam:CreatePolicyVersion",
#                 "iam:DeletePolicyVersion",
#                 "iam:CreateRole",
#                 "iam:ListRolePolicies",
#                 "iam:PutRolePermissionsBoundary",
#                 "iam:DeleteRolePermissionsBoundary",
#                 "appsync:*",
#                 "apigateway:DELETE",
#                 "apigateway:GET",
#                 "apigateway:PATCH",
#                 "apigateway:POST",
#                 "apigateway:PUT",
#                 "cognito-idp:CreateUserPool",
#                 "cognito-identity:*",
#                 "lambda:AddPermission",
#                 "lambda:CreateFunction",
#                 "lambda:DeleteFunction",
#                 "lambda:GetFunction",
#                 "lambda:GetFunctionConfiguration",
#                 "lambda:InvokeAsync",
#                 "lambda:InvokeFunction",
#                 "lambda:RemovePermission",
#                 "lambda:UpdateFunctionCode",
#                 "lambda:UpdateFunctionConfiguration",
#                 "lambda:ListTags",
#                 "lambda:TagResource",
#                 "lambda:UntagResource",
#                 "lambda:AddLayerVersionPermission",
#                 "lambda:CreateEventSourceMapping",
#                 "lambda:DeleteEventSourceMapping",
#                 "lambda:DeleteLayerVersion",
#                 "lambda:GetEventSourceMapping",
#                 "lambda:GetLayerVersion",
#                 "lambda:ListEventSourceMappings",
#                 "lambda:ListLayerVersions",
#                 "lambda:PublishLayerVersion",
#                 "lambda:RemoveLayerVersionPermission",
#                 "dynamodb:CreateTable",
#                 "dynamodb:DeleteItem",
#                 "dynamodb:DeleteTable",
#                 "dynamodb:DescribeContinuousBackups",
#                 "dynamodb:DescribeTable",
#                 "dynamodb:DescribeTimeToLive",
#                 "dynamodb:ListStreams",
#                 "dynamodb:PutItem",
#                 "dynamodb:TagResource",
#                 "dynamodb:ListTagsOfResource",
#                 "dynamodb:UpdateContinuousBackups",
#                 "dynamodb:UpdateItem",
#                 "dynamodb:UpdateTable",
#                 "dynamodb:UpdateTimeToLive",
#                 "cloudfront:CreateCloudFrontOriginAccessIdentity",
#                 "cloudfront:CreateDistribution",
#                 "cloudfront:DeleteCloudFrontOriginAccessIdentity",
#                 "cloudfront:DeleteDistribution",
#                 "cloudfront:GetCloudFrontOriginAccessIdentity",
#                 "cloudfront:GetCloudFrontOriginAccessIdentityConfig",
#                 "cloudfront:GetDistribution",
#                 "cloudfront:GetDistributionConfig",
#                 "cloudfront:TagResource",
#                 "cloudfront:UntagResource",
#                 "cloudfront:UpdateCloudFrontOriginAccessIdentity",
#                 "cloudfront:UpdateDistribution",
#                 "events:DeleteRule",
#                 "events:DescribeRule",
#                 "events:ListRuleNamesByTarget",
#                 "events:PutRule",
#                 "events:PutTargets",
#                 "events:RemoveTargets",
#                 "mobiletargeting:GetApp",
#                 "kinesis:AddTagsToStream",
#                 "kinesis:CreateStream",
#                 "kinesis:DeleteStream",
#                 "kinesis:DescribeStream",
#                 "kinesis:DescribeStreamSummary",
#                 "kinesis:ListTagsForStream",
#                 "kinesis:PutRecords",
#                 "es:AddTags",
#                 "es:CreateElasticsearchDomain",
#                 "es:DeleteElasticsearchDomain",
#                 "es:DescribeElasticsearchDomain",
#                 "s3:PutEncryptionConfiguration"
#             ],
#             Resource= "*",
#             Condition= {
#                 "ForAnyValue:StringEquals": {
#                     "aws:CalledVia": [
#                         "cloudformation.amazonaws.com"
#                     ]
#                 }
#             }
#         },
#         {
#             #Sid="CLISDKCalls",
#             Effect= "Allow",
#             Action= [
                
#                 "appsync:UpdateApiKey",
#                 "appsync:ListApiKeys",
#                 "amplify:*",
#                 "amplifybackend:*",
#                 "amplifyuibuilder:*",
#                 "sts:AssumeRole",
#                 "mobiletargeting:*",
#                 "cognito-idp:*",
#                 "dynamodb:DescribeTable",
#                 "dynamodb:ListTables",
#                 "lambda:GetFunction",
#                 "lambda:CreateFunction",
#                 "lambda:AddPermission",
#                 "lambda:DeleteFunction",
#                 "lambda:DeleteLayerVersion",
#                 "lambda:InvokeFunction",
#                 "lambda:ListLayerVersions",
#                 "iam:PutRolePolicy",
#                 "iam:CreatePolicy",
#                 "iam:AttachRolePolicy",
#                 "iam:ListPolicyVersions",
#                 "iam:ListAttachedRolePolicies",
#                 "iam:CreateRole",
#                 "iam:PassRole",
#                 "iam:ListRolePolicies",
#                 "iam:DeleteRolePolicy",
#                 "iam:CreatePolicyVersion",
#                 "iam:DeletePolicyVersion",
#                 "iam:DeleteRole",
#                 "iam:DetachRolePolicy",
#                 "cloudformation:ListStacks",
#                 "sns:CreateSMSSandboxPhoneNumber",
#                 "sns:GetSMSSandboxAccountStatus",
#                 "sns:VerifySMSSandboxPhoneNumber",
#                 "sns:DeleteSMSSandboxPhoneNumber",
#                 "sns:ListSMSSandboxPhoneNumbers",
#                 "sns:ListOriginationNumbers",
#                 "rekognition:DescribeCollection",
#                 "logs:DescribeLogStreams",
#                 "logs:GetLogEvents",
#                 "lex:GetBot",
#                 "lex:GetBuiltinIntent",
#                 "lex:GetBuiltinIntents",
#                 "lex:GetBuiltinSlotTypes",
#                 "cloudformation:GetTemplateSummary",
#                 "codecommit:GitPull"
#             ],
#             Resource= "*"
#         },
#         {
#             Sid= "AmplifySSMCalls",
#             Effect= "Allow",
#             Action= [
#                 "ssm:PutParameter",
#                 "ssm:DeleteParameter",
#                 "ssm:GetParametersByPath",
#                 "ssm:GetParameters",
#                 "ssm:GetParameter",
#                 "ssm:DeleteParameters"
#             ],
#             Resource= "arn:aws:ssm:*:*:parameter/amplify/*"
#         },
#         {
#             Sid= "GeoPowerUser",
#             Effect= "Allow",
#             Action= [
#                 "geo:*"
#             ],
#             Resource= "*"
#         },
#         {
#             #Sid = "AmplifyStorageSDKCalls",
#             Effect = "Allow",
#             Action = [
#                 "s3:*"
#             ],
#             Resource= "*"
#         },
#         {
#             Sid= "AmplifySSRCalls",
#             Effect= "Allow",
#             Action= [
#                 "cloudfront:CreateCloudFrontOriginAccessIdentity",
#                 "cloudfront:CreateDistribution",
#                 "cloudfront:CreateInvalidation",
#                 "cloudfront:GetDistribution",
#                 "cloudfront:GetDistributionConfig",
#                 "cloudfront:ListCloudFrontOriginAccessIdentities",
#                 "cloudfront:ListDistributions",
#                 "cloudfront:ListDistributionsByLambdaFunction",
#                 "cloudfront:ListDistributionsByWebACLId",
#                 "cloudfront:ListFieldLevelEncryptionConfigs",
#                 "cloudfront:ListFieldLevelEncryptionProfiles",
#                 "cloudfront:ListInvalidations",
#                 "cloudfront:ListPublicKeys",
#                 "cloudfront:ListStreamingDistributions",
#                 "cloudfront:UpdateDistribution",
#                 "cloudfront:TagResource",
#                 "cloudfront:UntagResource",
#                 "cloudfront:ListTagsForResource",
#                 "iam:AttachRolePolicy",
#                 "iam:CreateRole",
#                 "iam:CreateServiceLinkedRole",
#                 "iam:GetRole",
#                 "iam:PutRolePolicy",
#                 "iam:PassRole",
#                 "lambda:CreateFunction",
#                 "lambda:EnableReplication",
#                 "lambda:DeleteFunction",
#                 "lambda:GetFunction",
#                 "lambda:GetFunctionConfiguration",
#                 "lambda:PublishVersion",
#                 "lambda:UpdateFunctionCode",
#                 "lambda:UpdateFunctionConfiguration",
#                 "lambda:ListTags",
#                 "lambda:TagResource",
#                 "lambda:UntagResource",
#                 "route53:ChangeResourceRecordSets",
#                 "route53:ListHostedZonesByName",
#                 "route53:ListResourceRecordSets",
#                 "lambda:ListEventSourceMappings",
#                 "lambda:CreateEventSourceMapping",
#                 "iam:UpdateAssumeRolePolicy",
#                 "iam:DeleteRolePolicy",
#                 "sqs:CreateQueue",
#                 "sqs:DeleteQueue",
#                 "sqs:GetQueueAttributes",
#                 "sqs:SetQueueAttributes",
#                 "amplify:GetApp",
#                 "amplify:GetBranch",
#                 "amplify:UpdateApp",
#                 "amplify:UpdateBranch"
#             ],
#             Resource= "*"
#         }
#     ]
# }

#   )
# }

# resource "aws_iam_policy" "terraform-policy" {
#   name        = "${local.tfsettings.prefix}Terraform"
#   description = "Access granted for Terraform Developer"
#   policy = jsonencode(
#     {
#     Version= "2012-10-17",
#     Statement= [
#         {
#             Effect= "Allow",
#             Action= [
#                 "autoscaling:DescribeAutoScalingGroups",
#                 "autoscaling:UpdateAutoScalingGroup",
#                 "ec2:AttachVolume",
#                 "ec2:AuthorizeSecurityGroupIngress",
#                 "ec2:CreateRoute",
#                 "ec2:CreateSecurityGroup",
#                 "ec2:CreateTags",
#                 "ec2:CreateVolume",
#                 "ec2:DeleteRoute",
#                 "ec2:DeleteSecurityGroup",
#                 "ec2:DeleteVolume",
#                 "ec2:DescribeInstances",
#                 "ec2:DescribeRouteTables",
#                 "ec2:DescribeSecurityGroups",
#                 "ec2:DescribeSubnets",
#                 "ec2:DescribeVolumes",
#                 "ec2:DescribeVolumesModifications",
#                 "ec2:DescribeVpcs",
#                 "ec2:DescribeDhcpOptions",
#                 "ec2:DescribeNetworkInterfaces",
#                 "ec2:DetachVolume",
#                 "ec2:ModifyInstanceAttribute",
#                 "ec2:ModifyVolume",
#                 "ec2:RevokeSecurityGroupIngress",
#                 "ec2:DescribeAccountAttributes",
#                 "ec2:DescribeAddresses",
#                 "ec2:DescribeInternetGateways",
#                 "elasticloadbalancing:AddTags",
#                 "elasticloadbalancing:ApplySecurityGroupsToLoadBalancer",
#                 "elasticloadbalancing:AttachLoadBalancerToSubnets",
#                 "elasticloadbalancing:ConfigureHealthCheck",
#                 "elasticloadbalancing:CreateListener",
#                 "elasticloadbalancing:CreateLoadBalancer",
#                 "elasticloadbalancing:CreateLoadBalancerListeners",
#                 "elasticloadbalancing:CreateLoadBalancerPolicy",
#                 "elasticloadbalancing:CreateTargetGroup",
#                 "elasticloadbalancing:DeleteListener",
#                 "elasticloadbalancing:DeleteLoadBalancer",
#                 "elasticloadbalancing:DeleteLoadBalancerListeners",
#                 "elasticloadbalancing:DeleteTargetGroup",
#                 "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
#                 "elasticloadbalancing:DeregisterTargets",
#                 "elasticloadbalancing:DescribeListeners",
#                 "elasticloadbalancing:DescribeLoadBalancerAttributes",
#                 "elasticloadbalancing:DescribeLoadBalancerPolicies",
#                 "elasticloadbalancing:DescribeLoadBalancers",
#                 "elasticloadbalancing:DescribeTargetGroupAttributes",
#                 "elasticloadbalancing:DescribeTargetGroups",
#                 "elasticloadbalancing:DescribeTargetHealth",
#                 "elasticloadbalancing:DetachLoadBalancerFromSubnets",
#                 "elasticloadbalancing:ModifyListener",
#                 "elasticloadbalancing:ModifyLoadBalancerAttributes",
#                 "elasticloadbalancing:ModifyTargetGroup",
#                 "elasticloadbalancing:ModifyTargetGroupAttributes",
#                 "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
#                 "elasticloadbalancing:RegisterTargets",
#                 "elasticloadbalancing:SetLoadBalancerPoliciesForBackendServer",
#                 "elasticloadbalancing:SetLoadBalancerPoliciesOfListener",
#                 "kms:DescribeKey"
#             ],
#             Resource= "*"
#         },
#         {
#             Effect= "Allow",
#             Action= "iam:CreateServiceLinkedRole",
#             Resource= "*",
#             Condition={
#                 StringEquals= {
#                     "iam:AWSServiceName": "elasticloadbalancing.amazonaws.com"
#                 }
#             }
#         }
#     ]
# }
#   )
# }

# resource "aws_iam_policy" "cloudauditor-policy" {
#   name        = "${local.tfsettings.prefix}CloudAuditor"
#   description = "Access granted for CloudAuditor"
#   policy = jsonencode(
#       {
#     Version= "2012-10-17",
#     Statement= [
#         {
#             Effect= "Allow",
#             Resource= "*",
#             Action= [
#                 "access-analyzer:*",
#                 "acm-pca:ListPermissions",
#                 "acm:Describe*",
#                 "acm:List*",
#                 "application-autoscaling:Describe*",
#                 "appmesh:Describe*",
#                 "appmesh:List*",
#                 "appsync:List*",
#                 "athena:GetWorkGroup",
#                 "athena:List*",
#                 "autoscaling-plans:DescribeScalingPlans",
#                 "autoscaling:Describe*",
#                 "batch:DescribeComputeEnvironments",
#                 "batch:DescribeJobDefinitions",
#                 "chime:List*",
#                 "cloud9:Describe*",
#                 "cloud9:ListEnvironments",
#                 "clouddirectory:ListDirectories",
#                 "cloudformation:*",
#                 "cloudfront:Get*",
#                 "cloudfront:List*",
#                 "cloudhsm:ListHapgs",
#                 "cloudhsm:ListHsms",
#                 "cloudhsm:ListLunaClients",
#                 "cloudsearch:Describe*",
#                 "cloudtrail:*",
#                 "cloudwatch:Describe*",
#                 "cloudwatch:ListTagsForResource",
#                 "codebuild:ListProjects",
#                 "codecommit:*",
#                 "codedeploy:Batch*",
#                 "codedeploy:Get*",
#                 "codedeploy:List*",
#                 "codepipeline:*",
#                 "codestar:Describe*",
#                 "codestar:List*",
#                 "cognito-identity:ListIdentityPools",
#                 "cognito-idp:*",
#                 "cognito-sync:Describe*",
#                 "cognito-sync:List*",
#                 "comprehend:Describe*",
#                 "comprehend:List*",
#                 "config:BatchGetAggregateResourceConfig",
#                 "config:BatchGetResourceConfig",
#                 "config:*",
#                 "datapipeline:*",
#                 "datasync:Describe*",
#                 "datasync:List*",
#                 "dax:Describe*",
#                 "dax:ListTags",
#                 "detective:GetGraphIngestState",
#                 "detective:ListGraphs",
#                 "detective:ListMembers",
#                 "directconnect:Describe*",
#                 "dms:Describe*",
#                 "dms:ListTagsForResource",
#                 "ds:DescribeDirectories",
#                 "dynamodb:*",
#                 "ec2:*",
#                 "ecr-public:*",
#                 "ecr:*",
#                 "ecs:Describe*",
#                 "ecs:List*",
#                 "eks:DescribeCluster",
#                 "eks:DescribeNodeGroup",
#                 "eks:ListClusters",
#                 "eks:ListNodeGroups",
#                 "elasticache:Describe*",
#                 "elasticache:ListTagsForResource",
#                 "elasticbeanstalk:Describe*",
#                 "elasticbeanstalk:DescribeApplications",
#                 "elasticbeanstalk:ListTagsForResource",
#                 "elasticfilesystem:Describe*",
#                 "elasticloadbalancing:Describe*",
#                 "elasticmapreduce:*",
#                 "es:Describe*",
#                 "es:ListDomainNames",
#                 "es:ListElasticsearchInstanceTypeDetails",
#                 "es:ListElasticsearchVersions",
#                 "es:ListTags",
#                 "events:Describe*",
#                 "events:List*",
#                 "events:TestEventPattern",
#                 "firehose:Describe*",
#                 "firehose:List*",
#                 "fms:ListComplianceStatus",
#                 "fms:ListPolicies",
#                 "fsx:Describe*",
#                 "fsx:List*",
#                 "gamelift:ListBuilds",
#                 "gamelift:ListFleets",
#                 "glacier:DescribeVault",
#                 "glacier:GetVaultAccessPolicy",
#                 "glacier:ListVaults",
#                 "globalaccelerator:Describe*",
#                 "globalaccelerator:List*",
#                 "glue:GetCrawlers",
#                 "glue:GetDataCatalogEncryptionSettings",
#                 "glue:GetDatabases",
#                 "glue:GetDevEndpoints",
#                 "glue:GetJobs",
#                 "greengrass:List*",
#                 "guardduty:DescribePublishingDestination",
#                 "guardduty:Get*",
#                 "guardduty:List*",
#                 "iam:GenerateCredentialReport",
#                 "iam:GenerateServiceLastAccessedDetails",
#                 "iam:Get*",
#                 "iam:List*",
#                 "iam:SimulateCustomPolicy",
#                 "iam:SimulatePrincipalPolicy",
#                 "inspector:Describe*",
#                 "inspector:Get*",
#                 "inspector:List*",
#                 "inspector:Preview*",
#                 "iot:Describe*",
#                 "iot:GetPolicy",
#                 "iot:GetPolicyVersion",
#                 "iot:List*",
#                 "kinesis:*",
#                 "kinesisanalytics:ListApplications",
#                 "kms:Describe*",
#                 "kms:Get*",
#                 "kms:List*",
#                 "lambda:*",
#                 "license-manager:List*",
#                 "lightsail:GetInstances",
#                 "lightsail:GetLoadBalancers",
#                 "logs:Describe*",
#                 "logs:ListTagsLogGroup",
#                 "machinelearning:DescribeMLModels",
#                 "mediaconnect:Describe*",
#                 "mediaconnect:List*",
#                 "mediastore:GetContainerPolicy",
#                 "mediastore:ListContainers",
#                 "mq:*",
#                 "network-firewall:ListFirewalls",
#                 "opsworks-cm:DescribeServers",
#                 "opsworks:DescribeStacks",
#                 "organizations:Describe*",
#                 "organizations:List*",
#                 "quicksight:Describe*",
#                 "quicksight:List*",
#                 "ram:List*",
#                 "rds:Describe*",
#                 "rds:DownloadDBLogFilePortion",
#                 "rds:ListTagsForResource",
#                 "redshift:Describe*",
#                 "rekognition:Describe*",
#                 "rekognition:List*",
#                 "robomaker:Describe*",
#                 "robomaker:List*",
#                 "route53:Get*",
#                 "route53:List*",
#                 "route53domains:GetDomainDetail",
#                 "route53domains:GetOperationDetail",
#                 "route53domains:ListDomains",
#                 "route53domains:ListOperations",
#                 "route53domains:ListTagsForDomain",
#                 "route53resolver:Get*",
#                 "route53resolver:List*",
#                 "s3:Get*",
#                 "s3:ListAccessPoints",
#                 "s3:ListAllMyBuckets",
#                 "sagemaker:Describe*",
#                 "sagemaker:List*",
#                 "schemas:*",
#                 "sdb:DomainMetadata",
#                 "sdb:ListDomains",
#                 "secretsmanager:DescribeSecret",
#                 "secretsmanager:GetResourcePolicy",
#                 "secretsmanager:ListSecretVersionIds",
#                 "secretsmanager:ListSecrets",
#                 "securityhub:Describe*",
#                 "securityhub:Get*",
#                 "securityhub:List*",
#                 "serverlessrepo:GetApplicationPolicy",
#                 "serverlessrepo:List*",
#                 "servicequotas:*",
#                 "ses:*",
#                 "shield:Describe*",
#                 "shield:List*",
#                 "snowball:ListClusters",
#                 "snowball:ListJobs",
#                 "sns:*",
#                 "sqs:GetQueueAttributes",
#                 "sqs:ListDeadLetterSourceQueues",
#                 "sqs:ListQueueTags",
#                 "sqs:ListQueues",
#                 "ssm:*",
#                 "sso:DescribePermissionsPolicies",
#                 "sso:List*",
#                 "states:ListStateMachines",
#                 "storagegateway:Describe*",
#                 "storagegateway:List*",
#                 "support:*",
#                 "tag:GetResources",
#                 "tag:GetTagKeys",
#                 "transfer:Describe*",
#                 "transfer:List*",
#                 "translate:List*",
#                 "trustedadvisor:Describe*",
#                 "waf-regional:GetWebACL",
#                 "waf-regional:ListResourcesForWebACL",
#                 "waf-regional:ListTagsForResource",
#                 "waf-regional:ListWebACLs",
#                 "waf:GetWebACL",
#                 "waf:ListTagsForResource",
#                 "waf:ListWebACLs",
#                 "wafv2:GetWebACL",
#                 "wafv2:List*",
#                 "workdocs:DescribeResourcePermissions",
#                 "workspaces:Describe*",
#                 "xray:*",
#             ]
#         },
#         {
#             Effect= "Allow",
#             Action= [
#                 "apigateway:GET"
#             ],
#             Resource= [
#                 "arn:aws:apigateway:*::/apis",
#                 "arn:aws:apigateway:*::/apis/*/routes",
#                 "arn:aws:apigateway:*::/apis/*/stages",
#                 "arn:aws:apigateway:*::/apis/*/stages/*",
#                 "arn:aws:apigateway:*::/clientcertificates/*",
#                 "arn:aws:apigateway:*::/restapis",
#                 "arn:aws:apigateway:*::/restapis/*/authorizers",
#                 "arn:aws:apigateway:*::/restapis/*/authorizers/*",
#                 "arn:aws:apigateway:*::/restapis/*/documentation/versions",
#                 "arn:aws:apigateway:*::/restapis/*/resources",
#                 "arn:aws:apigateway:*::/restapis/*/resources/*",
#                 "arn:aws:apigateway:*::/restapis/*/resources/*/methods/*",
#                 "arn:aws:apigateway:*::/restapis/*/stages",
#                 "arn:aws:apigateway:*::/restapis/*/stages/*",
#                 "arn:aws:apigateway:*::/tags/*",
#                 "arn:aws:apigateway:*::/vpclinks"
#             ]
#         }
#     ]
# }
#   )
# }


# resource "aws_iam_policy" "gsyncit-policy" {
#   name        = "${local.tfsettings.prefix}GSyncIT"
#   description = "Access granted for Certain S3 Bucket for GSync IT"
#   policy = jsonencode({
#     Version= "2012-10-17",
#     Statement= [
#         {
#             Sid= "ConsoleAccess",
#             Effect= "Allow",
#             Action= [
#                 "s3:GetAccountPublicAccessBlock",
#                 "s3:GetBucketAcl",
#                 "s3:GetBucketLocation",
#                 "s3:GetBucketPolicyStatus",
#                 "s3:GetBucketPublicAccessBlock",
#                 "s3:ListAllMyBuckets"
#             ],
#             Resource= "*"
#         },
#         {
#             Sid= "ListObjectsInBucket",
#             Effect= "Allow",
#             Action="s3:ListBucket",
#             Resource= ["arn:aws:s3:::kyc12c6fab89a7146a69e6064e33aca513e213738-dev"]
#         },
#         {
#             Sid= "AllObjectActions",
#             Effect= "Allow",
#             Action= "s3:*Object",
#             Resource= ["arn:aws:s3:::kyc12c6fab89a7146a69e6064e33aca513e213738-dev/*"]
#         }
#     ]
# })
# }