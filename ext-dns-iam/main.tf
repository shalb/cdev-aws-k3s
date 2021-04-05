resource random_pet "iam" {}

resource aws_iam_policy "ext_dns" {
  name   = substr("${var.name}-ext-dns-${random_pet.iam.id}", 0, 32)
  policy =  <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
    {
        "Effect": "Allow",
        "Action": [
        "route53:ChangeResourceRecordSets",
        "route53:GetChange"
        ],
        "Resource": [
        "arn:aws:route53:::hostedzone/${var.domain}",
        "arn:aws:route53:::change/*"
        ]
    },
    {
        "Effect": "Allow",
        "Action": [
        "route53:ListHostedZones",
        "route53:ListResourceRecordSets",
        "route53:ListHostedZonesByName"
        ],
        "Resource": [
        "*"
        ]
    }
    ]
}
EOF
}

variable "domain" {
  type = string
}

variable "name" {
  type = string
}

output "id" {
    value = aws_iam_policy.ext_dns.id
}

output "arn" {
    value = aws_iam_policy.ext_dns.arn
}

output "name" {
    value = aws_iam_policy.ext_dns.name
}