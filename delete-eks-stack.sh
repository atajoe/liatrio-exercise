aws cloudformation delete-stack \
  --region us-east-1 \
  --stack-name ExpressApi-EKSCluster

aws cloudformation wait stack-delete-complete \
  --stack-name ExpressApi-EKSCluster \
  --region us-east-1

stack_status=$(aws cloudformation describe-stacks \
  --region us-east-1 \
  --stack-name ExpressApi-EKSCluster \
  --query 'Stacks[0].StackStatus' \
  --output text)
  
if [[ $stack_status == "DELETE_COMPLETE" ]]; then
  echo "CloudFormation VPC stack deleted!"
else
  echo "CloudFormation stack creation failed with status: $stack_status"
  exit 1
fi