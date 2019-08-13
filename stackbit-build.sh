#!/usr/bin/env bash

set -e
set -o pipefail
set -v

if [[ -z "${STACKBIT_API_KEY}" ]]; then
    echo "WARNING: No STACKBIT_API_KEY environment variable set, skipping stackbit-pull"
else
    npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://89ee6d1f.ngrok.io/pull/5d52946d3e1a126d0eb58e49 
fi
./ssg-build.sh

