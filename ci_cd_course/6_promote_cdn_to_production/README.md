Go [here](https://docs.aws.amazon.com/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html#root-domain-walkthrough-configure-bucket-permissions)
for instructions on how to make your bucket public.


Go [here](https://docs.aws.amazon.com/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html#upload-website-content)
to make your bucket a static website. 

Once you do these two steps, then deploy your CDN as we showed below, you should be able to see that
index.html file right away.


Note that you can use the `cloudformation deploy` command, which takes a series
of space-delimited arguments to the `--override-parameters` flag, which allows you
to apply a change set, or even dynamically computed parameter values to either
already existing stacks, or to stacks that don't exist yet (it will create them for you).

For example, you can do something like this:
```bash
aws cloudformation deploy \
    --template-file cloudfront_template.yml \
    --stack-name cloudfront-stack \
    --parameter-overrides BucketName="udacity-cdn-promote-to-production" EnvironmentName="Udacity-CDN-Creation" \
    --tags EnvironmentName="Udacity-CDN-Creation" \
    --profile udacity_cloud_devops
```

In this example, I had the parameters BucketName and EnvironmentName.
And I used this command to create the stack itself. 