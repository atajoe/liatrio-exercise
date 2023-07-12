aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name ExpressApiECR2 \
    --template-body file://eks-cluster-stack.yaml \
    --capabilities CAPABILITY_NAMED_IAM