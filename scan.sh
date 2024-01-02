#!/bin/bash

python3 /scan.py \
  --api-key ${PLUGIN_API_KEY} \
  --target-id ${PLUGIN_TARGET_ID} \
  --region ${PLUGIN_REGION:-eu} \
  --scan-profile ${PLUGIN_SCAN_PROFILE}

