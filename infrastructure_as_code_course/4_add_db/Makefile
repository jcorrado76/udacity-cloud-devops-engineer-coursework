CLI_CREATE_COMMAND = aws cloudformation create-stack
CLI_UPDATE_COMMAND = aws cloudformation update-stack
REGION = us-west-2
PROFILE = udacity_cloud_devops
NETWORK_YML_FILE = file://network.yml
NETWORK_PARAMS_FILE = file://network.json
SERVER_YML_FILE = file://server.yml
SERVER_PARAMS_FILE = file://server.json
DB_YML_FILE = file://db.yml
DB_PARAMS_FILE = file://db.json

network:
	$(CLI_CREATE_COMMAND) \
	--stack-name dbExerciseNetwork \
	--template-body $(NETWORK_YML_FILE) \
	--parameters $(NETWORK_PARAMS_FILE) \
	--region=$(REGION) \
	--profile=$(PROFILE)

server:
	$(CLI_CREATE_COMMAND) \
	--stack-name dbExerciseServer \
	--template-body $(SERVER_YML_FILE) \
	--parameters $(SERVER_PARAMS_FILE) \
	--capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
	--region=$(REGION) \
	--profile=$(PROFILE)

db:
	$(CLI_CREATE_COMMAND) \
	--stack-name dbExerciseDB \
	--template-body $(DB_YML_FILE) \
	--parameters $(DB_PARAMS_FILE) \
	--region=$(REGION) \
	--profile=$(PROFILE)


down:
	aws cloudformation delete-stack \
	--stack-name dbExerciseDB \
	--profile=$(PROFILE) \
	--region=$(REGION)