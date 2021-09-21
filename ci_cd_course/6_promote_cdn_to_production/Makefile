

cdn:
	aws cloudformation deploy \
		--template-file cloudfront_template.yml \
		--stack-name cloudfront-stack \
		--parameter-overrides BucketName="udacity-cdn-promote-to-production" EnvironmentName="Udacity-CDN-Creation" \
		--tags EnvironmentName="Udacity-CDN-Creation" \
		--profile udacity_cloud_devops


circleCiId=${CIRCLE_WORKFLOW_ID:0:7}
newBucket:
	aws cloudformation deploy \
		--template-file bucket_template.yml \
		--stack-name cdn-s3-bucket-$circleCiId \
		--parameter-overrides BucketName="udacity-cdn-promote-to-production-$circleCiId"