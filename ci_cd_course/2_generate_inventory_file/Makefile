generateInventory:
	aws ec2 describe-instances \
	--query 'Reservations[*].Instances[*].PublicIpAddress' \
	--filters "Name=tag:Project,Values=UdacityGenerateInventoryFIle" \
	--output text \
	--profile udacity_cloud_devops >> inventory.txt

initializeInventory:
	echo "[all]" > inventory.txt