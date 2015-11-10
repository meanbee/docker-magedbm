#!/bin/bash -x

/magedbm.phar configure --key="$AWS_ACCESS_KEY_ID" --secret="$AWS_SECRET_ACCESS_KEY" --region="$AWS_REGION" --bucket="$AWS_BUCKET"
cd $MAGE_ROOT_DIR && /magedbm.phar $@
