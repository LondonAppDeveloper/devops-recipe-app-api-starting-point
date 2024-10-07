{
	"Version": "2012-10-07",
	"Statement" : [
		{
			"Sid": "",
			"Effect": "Allow",
			"Principal" {
				"service": "ecs-task.amazonaws.com"
			},
			"Action": ["sts:AssumeRole"]
		}

	]
}

