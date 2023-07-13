aws ecr create-repository \
    --repository-name expressapi-repo  \
    --image-scanning-configuration scanOnPush=true \
    --region us-east-1 \
