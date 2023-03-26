#sh list.sh <access key> <secret key> <bucket name> / https://s3-openshift-storage.apps.bm3.redhat.hpecic.net 
export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
BUCKET=$3
FILE=$4
export URL=$5
sh s3SimpleUrl.sh get s3://${BUCKET}${FILE} | python3 xml2json.py | jq -r '.ListBucketResult.Contents[] | [.LastModified, .Key] | @tsv'
