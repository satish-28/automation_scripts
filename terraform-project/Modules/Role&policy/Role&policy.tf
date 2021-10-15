resource "aws_iam_policy" "test_policy" {
  name   = "test-policy"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
{
    "Effect": "Allow",
    "Action":  "s3:PutObject",
    "Resource": ["arn:aws:s3:::test-bucket/*"]
  }

]
}
EOF
}
resource "aws_iam_role" "test_role" {
  name               = "test-role"
  assume_role_policy = <<EOF
{
    "Version" : "2012-10-17",
    "Statement" :  [
      {
        "Action" : "sts:AssumeRole",
        "Effect" : "Allow",
        "Sid"    : "",
        "Principal" : {
          "Service" : "ec2.amazonaws.com"
        }
      }
    ]
  }
EOF
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  #name = "test-attach"
  role       = aws_iam_role.test_role.name
  policy_arn = aws_iam_policy.test_policy.arn
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = aws_iam_role.test_role.name
}
