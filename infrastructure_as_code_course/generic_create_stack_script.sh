#aws cloudformation create-stack \
#  --stack-name $1 \
#  --template-body file://$2  \
#  --parameters file://$3 \
#  --region=us-west-2 \
#  --profile=udacity_cloud_devops \
#  --on-failure=DELETE


aws cloudformation create-stack \
  --stack-name $1 \
  --template-body file://$2  \
  --parameters file://$3 \
  --region=us-west-2 \
  --profile=udacity_cloud_devops