# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_iam_role.eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO:
resource "aws_iam_role" "eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO" {
  assume_role_policy = jsonencode(
    {
      Statement = [
        {
          Action = "sts:AssumeRole"
          Effect = "Allow"
          Principal = {
            Service = "ec2.amazonaws.com"
          }
        },
      ]
      Version = "2012-10-17"
    }
  )
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO"
  path                  = "/"
  tags = {
    "Name"                                        = "eks-nodegroup-ng-maneksami2/NodeInstanceRole"
  }
}

output "nodegroup_role_arn" {
  value = aws_iam_role.eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO.arn
}
