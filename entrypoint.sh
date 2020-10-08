#!/bin/sh -l

set -e

if [[ -z "${INPUT_directory}" ]]; then
  # No input directory provided
  cd "$(dirname "$0")/.."
else
  cd "${INPUT_directory}"
fi

if [ -z "$APPCENTER_ACCESS_TOKEN" ]; then
    echo "APPCENTER_ACCESS_TOKEN is required to run commands with the appcenter cli"
    exit 126
fi


sh -c "appcenter codepush $*"
