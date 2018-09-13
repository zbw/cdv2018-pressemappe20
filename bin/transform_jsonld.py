from pyld import jsonld
import json

frame_fh = open('../data/frame.jsonld').read()
frame = json.loads(frame_fh)

data_fh = open('../data/pm20_cdv2018.interim.jsonld').read()
data = json.loads(data_fh)

#result = jsonld.flatten(data)
result = jsonld.frame(data, frame)

print(json.dumps(result, indent=2))
