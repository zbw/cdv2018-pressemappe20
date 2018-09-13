#!/bin/sh
# nbt, 31.8.2018

QUERY_DIR=../sparql
DATA_DIR=../data
ENDPOINT=http://zbw.eu/beta/sparql/pm20/query

# extract the turtle data from the endpoint
curl --silent  -X POST -H "Content-type: application/sparql-query" -H "Accept: application/ld+json" \
  --data-binary @$QUERY_DIR/construct_cdv2018_extract.rq $ENDPOINT \
  > $DATA_DIR/pm20_cdv2018.interim.jsonld
  
# shape jsonld with custom frame and context
python transform_jsonld.py > $DATA_DIR/pm20_cdv2018.jsonld

# extract examples
cat $DATA_DIR/pm20_cdv2018.jsonld | ./extract_examples.sh > ../examples.jsonld

# combine files in build directory
cd ..
/usr/bin/rm -f _build/data.zip
zip -r _build/data.zip data -x \*~ *.interim.*
/usr/bin/cp LICENSE _build
/usr/bin/cp README.md _build
/usr/bin/cp CHANGES.md _build
/usr/bin/cp examples.jsonld _build

