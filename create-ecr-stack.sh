aws ecr create-repository \
    --repository-name ExpressApi-Repo  \
    --image-scanning-configuration scanOnPush=true \
    --region us-east-1 \
