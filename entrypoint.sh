#!/bin/sh -l

set -e

if [ -z "${INPUT_directory}" ]; then
  echo "No input directory provided"
  # No input directory provided
  cd "$(dirname "$0")/.."
else
  echo "Input directory provided:"
  echo "${INPUT_directory}"
  cd "${INPUT_directory}"
fi

echo "PWD:"
echo $PWD

if [ -z "$APPCENTER_ACCESS_TOKEN" ]; then
    echo "APPCENTER_ACCESS_TOKEN is required to run commands with the appcenter cli"
    exit 126
fi


sh -c "appcenter codepush $*"
