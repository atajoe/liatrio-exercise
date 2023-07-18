aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name ExpressApi \
    --template-body file://eks-vpc-stack.yaml

aws cloudformation wait stack-create-complete \
  --region us-east-1 \
  --stack-name ExpressApi

stack_status=$(aws cloudformation describe-stacks \
  --region us-east-1 \
  --stack-name ExpressApi \
  --query 'Stacks[0].StackStatus' \
  --output text)

if [[ $stack_status == "CREATE_COMPLETE" ]]; then
  echo "CloudFormation VPC stack creation succeeded!"
else
  echo "CloudFormation stack creation failed with status: $stack_status"
  exit 1
fi