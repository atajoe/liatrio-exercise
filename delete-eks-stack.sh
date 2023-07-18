aws cloudformation delete-stack \
  --region us-east-1 \
  --stack-name ExpressApi-EKSCluster

aws cloudformation wait stack-delete-complete \
  --stack-name ExpressApi-EKSCluster \
  --region us-east-1
