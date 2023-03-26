import json
import sys
import xmltodict

xml = sys.stdin.readlines()[0]
print(json.dumps(xmltodict.parse(xml), indent=True))
