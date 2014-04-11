#!/bin/bash

sudo apt-get install -y curl

# echo SoftLayer user metadata to file
curl https://api.service.softlayer.com/rest/v3/SoftLayer_Resource_Metadata/UserMetadata.txt > ~/metadata.txt

