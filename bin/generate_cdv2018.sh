#!/bin/sh
# nbt, 31.8.2018

QUERY_DIR=../sparql
DATA_DIR=../data
ENDPOINT=http://zbw.eu/beta/sparql/pm20/query
ZIP=_build/cdv2018_pressemappe20.zip

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
/usr/bin/rm -f _build/*
zip -r $ZIP data -x \*~ *.interim.*
zip -r $ZIP LICENSE.txt
zip -r $ZIP README.md
zip -r $ZIP CHANGES.md
zip -r $ZIP examples.jsonld

