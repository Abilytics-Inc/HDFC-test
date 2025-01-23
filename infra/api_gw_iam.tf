
resource "aws_iam_role" "api_gw_role" {
  name = "ApiGwCloudwatchLoggingRole"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "apigateway.amazonaws.com"
        },
        "Action" : "sts:AssumeRole",
        }
    ]
  })
}


resource "aws_iam_role_policy_attachment" "api_attach" {
  role       = aws_iam_role.api_gw_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"
}
