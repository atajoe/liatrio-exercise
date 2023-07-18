aws cloudformation delete-stack \
  --region us-east-1 \
  --stack-name ExpressApi

aws cloudformation wait stack-delete-complete \
  --stack-name ExpressApi \
  --region us-east-1
