aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name ExpressApiECR \
    --template-body file://eks-cluster-stack.yaml