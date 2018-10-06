## Pandas demo on NYC 311 datasets

### Requirements:
pip3 install -r requirements.txt # --user


### Cloud integration

#### GCP
get https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-219.0.1-linux-x86_64.tar.gz
tar -xvzf google-cloud-sdk-219.0.1-linux-x86_64.tar.gz
gcloud init

Follow: https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform
to complete integration

#### AWS

pip install boto3 awscli

Go to: https://console.aws.amazon.com/iam/home
Users -> select your username -> Security credentials -> Create Access Key -> Record access key id and secret_access_key
Users -> select your username -> Add permissions -> Add to AdministratorAccess group


~/.aws/credentials
[default]
aws_access_key_id = YOUR_KEY
aws_secret_access_key = YOUR_SECRET

~/.aws/config
[default]
region=us-east-1


cd terraform
terraform init
terraform apply

https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:sort=keyName
-> Create Key Pair -> Note location of pem file

cd terraform
terraform init
terraform apply

https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#Instances:sort=instanceId
-> Instance -> Actions -> Netoworking -> Change Security Groups -> dmitry_access

