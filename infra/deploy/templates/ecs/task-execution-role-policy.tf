{
	"Version": "2012-10-07",
	"Statement": [
		{
			"Effect": "Allow",
			"Action": [
				"ecr:GetAuthorizationToken",
        			"ecr:BatchCheckLayerAvailability",
        			"ecr:GetDownloadUrlForLayer",
        			"ecr:BatchGetImage",
        			"logs:CreateLogStream",
        			"logs:PutLogEvents"
			],
			"Resource": "*"
		}
	]
}

