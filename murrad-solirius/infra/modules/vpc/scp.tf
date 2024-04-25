data "aws_iam_policy_document" "prevent_deletion_policy" {
  version = "2012-10-17"
  statement {
    sid = "NoTamperCloudtrail"
    actions = [
      "cloudtrail:DeleteTrail",
      "cloudtrail:StopLogging",
      "rds:DeleteDBInstance",
      "ec2:DeleteVpc"
    ]
    effect    = "Deny"
    resources = ["*"]
  }
}

resource "aws_organizations_policy" "prevent_deletion_policy" {
  name        = "prevent-deletion-policy"
  description = "Prevent users or roles in any affected account from tampering with cloudtrail."
  type        = "SERVICE_CONTROL_POLICY"
  content     = data.aws_iam_policy_document.prevent_deletion_policy.json
}

resource "aws_organizations_policy_attachment" "sandbox" {
  policy_id = aws_organizations_policy.prevent_deletion_policy.id
  target_id = data.aws_organizations_organizational_unit.sandbox.id
}