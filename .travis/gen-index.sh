#!/bin/sh

set -e

index=`./chartmuseum --gen-index --storage local --storage-local-rootdir charts`

echo "[index.yaml]"
echo "$index"
echo "$index" > index.yaml