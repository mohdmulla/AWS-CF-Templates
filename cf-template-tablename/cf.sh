cf() {
  local stack=$1
  local output=$2
  shift 2
  aws cloudformation describe-stacks \
    --stack-name "$stack" \
    --query "Stacks[0].Outputs[?OutputKey=='$output'].OutputValue" \
    --output text
}
