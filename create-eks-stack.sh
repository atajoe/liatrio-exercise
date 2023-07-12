aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name ExpressApi-EKSCluster \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-body file://eks-cluster-stack.yaml