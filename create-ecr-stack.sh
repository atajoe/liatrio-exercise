aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name ExpressApi-ECR \
    --template-body file://ecr-repository-stack.yaml \
    --capabilities CAPABILITY_NAMED_IAM