You have been tasked with creating the required IaC scripts for a new cloud environment in AWS.

The lead solutions architect for the project has sent you a diagram on what needs to be created.

Requirements:
* VPC - accepting CIDR block as parameter
* create IGW
* attach IGW to VPC
* create two subnets with Name tags "Public" and "Private" - make sure they access CIDR blocks as parameters
    * make sure the public subnet has MapPublicIpOnLaunch as true, and false for the private one
    * make sure both subnets are /24 in size
* create EIP for NAT gateway
* create NAT gateway in the public subnet
* 2 routing tables - one named "Public" and one named "Private"
* assign the routing tables to their corresponding subnet
* create a route in the public route table to send all traffic to the IGW
* create a route in the private route table to send all traffic to the NAT gateway