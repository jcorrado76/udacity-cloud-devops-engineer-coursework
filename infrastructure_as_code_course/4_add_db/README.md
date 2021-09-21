In this challenge, you'll build off what you did in challenge 2.

That was actually most of the work done.

You just need to deploy:
* EC2 instance:
    * Amazon Linux 2 EC2
    * in the private subnet
    * t3.micro
* security group:
    * allowing inbound port 80 access
* IAM role to allow EC2 session manager to access server
* IAM InstanceProfile to pass the above IAM role to our server

To create this cloudformation stack, you just run:
```bash
make server
```