aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name ExpressApi-EKSCluster \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-body file://eks-cluster-stack.yaml

aws cloudformation wait stack-create-complete \
  --region us-east-1 \
  --stack-name ExpressApi-EKSCluster

stack_status=$(aws cloudformation describe-stacks \
  --region us-east-1 \
  --stack-name ExpressApi-EKSCluster \
  --query 'Stacks[0].StackStatus' \
  --output text)

if [[ $stack_status == "CREATE_COMPLETE" ]]; then
  echo "CloudFormation EKS stack creation succeeded!"
else
  echo "CloudFormation stack creation failed with status: $stack_status"
  exit 1
fi