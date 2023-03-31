openssl s_client -showcerts -verify 5 -connect $1 < /dev/null |
 awk '/BEGIN CERTIFICATE/,/END CERTIFICATE/{ if(/BEGIN CERTIFICATE/){a++}; out="cert"a".pem"; print >out}' 

#sh get-cas.sh s3-openshift-storage.apps.bm2.redhat.hpecic.net:443
