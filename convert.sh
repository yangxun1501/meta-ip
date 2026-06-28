#!/bin/bash

curl -s https://raw.githubusercontent.com/rezmoss/cloud-provider-ip-addresses/main/meta/services/meta-as32934/meta_meta-as32934_ips_merged_v4.txt \
| awk '{print "  - '\''"$0"'\''"}' \
| sed '1i payload:' > meta.yaml
