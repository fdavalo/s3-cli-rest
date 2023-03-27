import json, xmljson
from lxml.etree import fromstring, tostring
import sys
import xmltodict

xml = sys.stdin.readlines()[0]
data = xmltodict.parse(xml)
if "Contents" in data["ListBucketResult"]:
    if type(data["ListBucketResult"]["Contents"]) not in (tuple, list):
        if data["ListBucketResult"]["Contents"] is not None: data["ListBucketResult"]["Contents"] = [data["ListBucketResult"]["Contents"]]
        else: data["ListBucketResult"]["Contents"] = []
else: data["ListBucketResult"]["Contents"] = []
print(json.dumps(data, indent=True))
