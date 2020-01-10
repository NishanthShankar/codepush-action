#!/bin/sh -l

set -e

if [ -z "$APPCENTER_ACCESS_TOKEN" ]; then
    echo "APPCENTER_ACCESS_TOKEN is required to run commands with the appcenter cli"
    exit 126
fi


sh -c "appcenter codepush $*"
