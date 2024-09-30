#!/usr/bin/env bash

set -u
set -e

dataDir=/debates_solr/data
cacheFile=~/.solr-data-loaded

if [ ! -f "$cacheFile" ]; then
  echo "Loading data ... "
  solr post -c debates "$dataDir"
  echo "Loaded data successful."

  touch "$cacheFile"
else
  echo "Loading already done."
fi
