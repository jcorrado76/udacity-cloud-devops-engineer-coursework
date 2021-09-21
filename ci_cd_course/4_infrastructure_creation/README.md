The purpose of this repo is to make a minimal working example of how to run CloudFormation scripts to spin up infrastructure
as the result of a CircleCI pipeline.


To do this exercise, you'll need to create a user that has programmatic access to your AWS console.

You'll need to go into the CircleCI console, and add your AWS user credentials as environment variables:
* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`
* `AWS_DEFAULT_REGION`

Make sure that if you're going to use multiline comments in your CloudFormation scripts, you put the `>` character to start your description.
Like this:
```yml
Description: >
  This is
   a multiline
   CloudFormation 
   script
```

Or else you'll get that `could not find expected ':'` error.