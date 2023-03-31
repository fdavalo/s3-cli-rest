#sh put.sh <access key> <secret key> <bucket name> fichier1 /dir1/fichier1 https://s3-openshift-storage.apps.bm3.redhat.hpecic.net 
export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
BUCKET=$3
LOCAL_FILE=$4
FILE=$5
export URL=$6
sh s3SimpleUrl.sh put s3://${BUCKET}${FILE} $LOCAL_FILE
