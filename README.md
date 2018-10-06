# Pandas demo on NYC 311 datasets
This demonstraits:
- Creating AWS instance with Terraform
- Using jupyter notebook to execute simple analytic pipeline on 311 dataset


### Step 1: Provision AWS instance with Terraform:

- Pick Ubuntu instance at [Ec2 locator](https://cloud-images.ubuntu.com/locator/ec2/)
- Go to: [IAM home](https://console.aws.amazon.com/iam/home)
- Create security credentials:
```
Users -> select your username -> Security credentials -> Create Access Key -> Record access key id and secret_access_key
```
- Add yourself to Admin group:
```
Users -> select your username -> Add permissions -> Add to AdministratorAccess group
```

#### Edit files to add required keys and secrets:
```
~/.aws/credentials
[default]
aws_access_key_id = YOUR_KEY
aws_secret_access_key = YOUR_SECRET

~/.aws/config
[default]
region=us-east-1
```

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


### Requirements:
pip3 install -r requirements.txt # --user
