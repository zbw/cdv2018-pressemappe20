## Queries for CdV 2018 PM20 (20th Century Press Archives)

Uses the SPARQL endpoint at `http://zbw.eu/beta/sparql/pm20/query` or - sometimes - the Wikidata endpoint `https://query.wikidata.org/sparql`.

All queries are restricted to the subset of folders relevant for _Coding da Vinci 2018_. For queries on the total of PM20, see https://github.com/zbw/sparql-queries/tree/master/pm20.


Query | Description
------|------------
[dummy](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/dummy.rq) | Template for queries ([results](http://zbw.eu/beta/sparql-lab/result?resultRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/results/dummy.json))
[count_folder_types](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_folder_types.rq) | Count folders and links to GND and Wikidata (Wikidata endpoint)


### Controlled vocabularies (parameterized queries)

#### Person folders

List | Description
-----|------------
[nationality](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_value.rq&property=schema:nationality) | Nationality
[activity/about](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_value_sub.rq&sub=zbwext:activity&property=schema:about) | Field of activity
[activity/location](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_value_sub.rq&sub=zbwext:activity&property=schema:location) | Country of activity

#### Organization folders

List | Description
-----|------------
[type](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_value.rq&property=dc:type) | Type of the organization
[industry](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_value.rq&property=schema:industry) | Industry / sector
[location](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_value.rq&property=schema:location) | Location
[broaderLocation](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_value.rq&property=zbwext:broaderLocation) | Broader location
[member/roleName](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/count_value_sub.rq&sub=schema:member&property=schema:roleName) | Roles of organization members


