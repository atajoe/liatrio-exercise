# Introduction

The github actions pipeline will create AWS resources in: us-east-1

# Set up AWS CLI configuration

- export AWS_PROFILE=user1 # The name of the profile you want to use
- aws configure # Configure AWS credentials with AWS access key ID and AWS secret access key.

# How to run it

- Fork github repository
- Invoke a push to the github repository to start the CI/CD pipeline.

# Tips

## Upon successful creating of AWS resource - update Kubeconfig

aws eks update-kubeconfig --region us-east-1 --name my-eks-cluster

# Run kubectl commands to get the External-IP for worker node

kubectl get service
