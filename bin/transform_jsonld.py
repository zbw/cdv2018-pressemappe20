from pyld import jsonld
import json

frame_fh = open('../data/frame.jsonld').read()
frame = json.loads(frame_fh)

data_fh = open('../data/pm20_cdv2018.interim.jsonld').read()
data = json.loads(data_fh)

framed = jsonld.frame(data, frame)

print(json.dumps(framed, indent=2))
