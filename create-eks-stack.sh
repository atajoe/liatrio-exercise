aws cloudformation create-stack \
    --region us-east-1 \
    --stack-name ExpressApi-EKSCluster \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-body file://eks-cluster-stack.yaml

eks_cluster_status=$(aws eks describe-cluster \
  --name ExpressApi-EKSCluster \
  --query 'cluster.status' \
  --output text)

if [[ $eks_cluster_status == "ACTIVE" ]]; then
  echo "EKS cluster creation succeeded!"
else
  echo "EKS cluster creation failed with status: $eks_cluster_status"
  exit 1
fi