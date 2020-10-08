#!/bin/sh -l

set -e
args=$1
directory=$2

if [ -z $directory ]; then
  # No input directory provided
  cd "$(dirname "$0")/.."
else
  echo "Input directory provided:"
  echo "$directory"
  cd "$directory"
fi

if [ -z "$APPCENTER_ACCESS_TOKEN" ]; then
    echo "APPCENTER_ACCESS_TOKEN is required to run commands with the appcenter cli"
    exit 126
fi


sh -c "appcenter codepush $args"
