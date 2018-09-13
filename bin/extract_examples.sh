#!/bin/sh

# extract example records from complete jsonld file

jq '{
    "@context": {"@context"}, 
    "@graph":[
      ."@graph"[] | select(.identifier as $a | ["pe/005823", "co/041389"] | index($a) )
    ]
  }'
