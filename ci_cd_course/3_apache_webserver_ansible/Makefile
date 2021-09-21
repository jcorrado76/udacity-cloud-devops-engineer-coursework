generateInventory:
	aws ec2 describe-instances \
	--query 'Reservations[*].Instances[*].PublicIpAddress' \
	--filters "Name=tag:Project,Values=UdacityRemoteAnsible" \
	--output text \
	--profile udacity_cloud_devops >> inventory.txt

initializeInventory:
	echo "[all]" > inventory.txt

webServer:
	ansible-playbook main-remote.yml -i inventory.txt --private-key ~/key_pairs/macbook-us-west-2.pem