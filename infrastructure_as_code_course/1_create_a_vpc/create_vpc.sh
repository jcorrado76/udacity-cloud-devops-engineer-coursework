aws cloudformation create-stack  \
  --stack-name myFirstTest \
  --template-body file://vpc.yml \
  --region=us-west-2 \
  --profile=udacity_cloud_devops