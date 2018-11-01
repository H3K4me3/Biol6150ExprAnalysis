#!/usr/bin/env bash


set -x

# Create and enter dir
mkdir -p data/microarray
cd data/microarray

# Download microarray data
curl 'https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE26487&format=file' \
  --compressed \
  -o GSE26487_RAW.tar

tar xvf GSE26487_RAW.tar
rm GSE26487_RAW.tar

find . -type f | egrep -v "(GSM651310|GSM651320|GSM651315|GSM651325)" | xargs rm

