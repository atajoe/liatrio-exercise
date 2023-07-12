aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name ExpressApi-ECR \
    --template-body file://eks-cluster-stack.yaml \
    --capabilities CAPABILITY_NAMED_IAM