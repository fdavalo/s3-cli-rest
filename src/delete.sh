export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
BUCKET=$3
FILE=$4
export URL=$5
sh s3SimpleUrl.sh delete s3://${BUCKET}${FILE} 
