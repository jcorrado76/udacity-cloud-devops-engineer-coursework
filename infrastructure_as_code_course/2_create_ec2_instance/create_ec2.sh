aws cloudformation create-stack  \
  --stack-name ec2Challenge \
  --template-body file://ec2.yml \
  --parameters file://ec2_params.json \
  --region=us-west-2 \
  --profile=udacity_cloud_devops \
  --on-failure=DELETE