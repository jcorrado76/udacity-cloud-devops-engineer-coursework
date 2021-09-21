server:
	aws cloudformation create-stack \
	  --stack-name challenge3 \
	  --template-body file://servers.yml  \
	  --parameters file://servers.json \
	  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
	  --region=us-west-2 \
	  --profile=udacity_cloud_devops