resource "aws_iam_policy" "deny-regions-policy" {
  name        = "${local.tfsettings.prefix}DenyRegions"
  description = "Deny all regions unless exempted"
  policy = data.aws_iam_policy_document.deny-regions.json
}

data "aws_iam_policy_document" "deny-regions" {
  statement {
    sid       = "DenyRegions"
    effect    = "Deny"
    resources = ["*"]

    not_actions = [
      "cloudfront:*",
      "iam:*",
      "route53:*",
      "support:*",
    ]

    condition {
      test     = "StringNotEquals"
      variable = "aws:RequestedRegion"
      values   = ["us-east-1"]
    }
  }
}