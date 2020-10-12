# Pressemappe 20. Jahrhundert - Personen- und Firmendossiers

_Datenset Version 3_

[ZBW - Leibniz-Informationszentrum Wirtschaft](http://www.zbw.eu) (Kiel/Hamburg)

Lizenz: [CC0](./LICENSE.txt)

Die Pressemappe 20. Jahrhundert bietet thematisch zusammengestellte Dossiers
mit Zeitungsartikeln, Firmenschriften und anderem aus einem großen Spektrum von
wirtschaftlich, politisch oder gesellschaftlich relevanten Themen. In ihren
Pressearchiven in Kiel und Hamburg haben die Vorläuferinstitutionen der [ZBW -
Leibniz-Informationszentrum Wirtschaft](http://zbw.eu) über fast hundert Jahre
hinweg Material zu Personen, Firmen/Institutionen, Waren und Sachthemen aus
über 1500 Publikationen gesammelt und aufbereitet. Die bis 1948
veröffentlichten Dokumente (ca. 5,7 Mio.  Seiten) wurden in einem von der DFG
geförderten Projekt digitalisiert. Sie werden nach und nach mit entsprechenden
Metadaten erschlossen und über die Anwendung  [Pressemappe 20.
Jahrhundert](http://webopac0.hwwa.de/PresseMappe20/index.cfm) (PM20) öffentlich
zur Verfügung gestellt.

Darüber hinaus hat die ZBW die gesamten Metadaten(\*) unter CC0-Lizenz
gestellt, um eine freie Community-Nutzung zu ermöglichen. Die Daten enthalten
jeweils auch einen Link auf eine DFG-Viewer-Ansicht des Dossiers - Beispiele
sind etwa [Mahatma
Gandhi](http://dfg-viewer.de/show/?tx_dlf[id]=http://zbw.eu/beta/pm20mets/pe/0058xx/005823.xml)
oder die [Hamburg-Bremer Afrika Linie
AG](http://dfg-viewer.de/show/?tx_dlf[id]=http://zbw.eu/beta/pm20mets/co/0459xx/045931.xml).

Für "Coding da Vinci Rhein-Main 2018" haben wir die Dossiers des Personen- und
Firmenarchivs aufbereitet, die anzeigbare Dokumente bieten. Sie sind mit
[kontrollierten
Vokabularen](https://github.com/zbw/cdv2018-pressemappe20/blob/master/sparql/README.md#controlled-vocabularies-parameterized-queries)
mehrdimensional erschlossen.

Gegenstand der Mappe  | Anzahl | mit GND | mit Wikidata
----------------------|--------|---------|-------------
Person                | 5262 | 4176 | 4717
Firma/Institution     | 7411 | 3515 | 1662

Da viele Datensätze Identifier aus der Gemeinsamen Normdatei (GND) und/oder aus
Wikidata enthalten, können aus diesen verlinkten Datenbeständen weitere
Metadaten, Mediendateien und weiterführende Links gewonnen werden. Als Anregung
dazu eine
[Abfrage](https://www.wikidata.org/wiki/User:Jneubert/Special_queries#Map_of_economists_in_PM20_by_place_of_birth),
die die aus Wikidata verlinkten PM20-WirtschaftswissenschaftlerInnen anhand
ihrer Geburtsorte auf einer Weltkarte präsentiert. Alle angezeigten Daten,
Koordinaten und Bilder stammen aus Wikidata; DFG-Viewer-Links ermöglichen
den Zugriff auf die Mappen.

Die Materialsammlung der Pressemappen hatte die kolonialen Interessen der
Hamburger Kaufmannschaft und des Deutschen Reiches zum Ausgangspunkt. Dies
spiegelt sich auch in den Mappen über kolonialistisch aktive
[Personen](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/folder_by_value_sub.rq&sub=http://zbw.eu/namespaces/zbw-extensions/activity&property=http://schema.org/about&value=%22Kolonialwesen%22)
und
[Firmen/Institutionen](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/folder_by_value.rq&property=http://purl.org/dc/elements/1.1/type&value=%22Kolonialgesellschaft%22)
im In- und Ausland wieder.

_\* Für die eingescannten Presseartikel und sonstigen Dokumente liegen die Rechte
bei den jeweiligen Urhebern. Hier greifen die gesetzlichen Regelungen, für
diese Dokumente kann die ZBW keine Lizenzen an Dritte erteilen._


## Datenbereitstellung

Die Daten stehen als [Download](https://doi.org/10.5281/zenodo.1410553)
sowie online über einen [SPARQL-Endpoint](http://zbw.eu/beta/sparql/pm20/query)
([Formular](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2018-pressemappe20/contents/sparql/search_folders_by_text.rq))
zur Verfügung. Als Format wurde JSON-LD gewählt, das sowohl mit den üblichen
Web-Tools und -Bibliotheken als auch mit Linked-Data-Tools verarbeitet werden
kann ([Format-Dokumentation, mit Beispielen](data/doku.md)).  Ein
[Github-Repository](https://github.com/zbw/cdv2018-pressemappe20) soll
Codebeispiele und eventuelle Updates des Datengebers zur Verfügung stellen und
es zugleich ermöglichen, Fragen und Issues zu adressieren. 


## Weitere Hintergrundinformationen

* [PM20-Website](http://webopac0.hwwa.de/PresseMappe20/index.cfm)
* [Wikipedia-Artikel](https://de.wikipedia.org/wiki/Pressearchiv_20._Jahrhundert)
* [Leibniz-Infrastrukturseite](https://www.leibniz-gemeinschaft.de/infrastrukturen/archive/pressearchiv-der-zbw/)
* [Coding da Vinci Rhein-Main 2018](https://codingdavinci.de/events/rheinmain/)

