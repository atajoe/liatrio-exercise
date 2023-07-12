aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name expressapi-vpc \
    --template-body file://eks-vpc-stack.yaml