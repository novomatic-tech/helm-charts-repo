#!/bin/sh

set -e

index=`chartmuseum --gen-index --storage local --disable-statefiles --storage-local-rootdir .`

echo "[index.yaml]"
echo "$index"
echo "$index" > index.yaml