# Dokumentation des Datenformats

Im folgenden wird eine vorläufiges und noch sehr ausschnitsweises Datenformat
verwendet. Die Veröffentlichung der Pressemappen-Daten steht noch am Anfang.
Insbesondere harren die intern benutzten kontrollierten Vokabulare noch einer
Konvertierung und eines Mappings nach [Wikidata](http://www.wikidata.org). Für
die Personen- und Firmendossiers, besonders diejenigen mit vielen Dokumenten,
ist das Wikidata-Mapping dagegen schon fortgeschritten - siehe die
[Mix-n-match](https://tools.wmflabs.org/mix-n-match/#/)-Kataloge unter dem
Stichwort "PM20". Derzeit sind die Einträge aus konrollierten Vokabularen als
Stringwerte wiedergegeben. Im Unterverzeichnis [raw](./raw) finden sich die
umfassenden, nicht aufbereiteten Rohdaten.

Die Veröffentlichung erfolgt im [JSON-LD](https://json-ld.org/)-Format. Es ist
über einen [context](./context.jsonld) mit erweiterten semantischen Informationen
verknüpft. Zugleich kann es unter Außerachtlassen dieses Kontexts wie jedes
andere JSON verarbeitet werden.

Beispieldaten für ein Personen-Dossier:

```json
{
    "@id": "http://purl.org/pressemappe20/folder/pe/005823",
    "@type": "PersonFolder",
    "dateOfBirthAndDeath": "1869-1948",
    "gndIdentifier": "118639145",
    "identifier": "pe/005823",
    "temporal": "1922-",
    "birthDate": "1869",
    "deathDate": "1948",
    "hasOccupation": "Führer der Unabhängigkeitsbewegung",
    "nationality": "Indien",
    "prefLabel": "Gandhi, Mohandas Karamchand",
    "wikipediaPage": [
        "https://de.wikipedia.org/wiki/Mohandas_Karamchand_Gandhi"
    ],
    "freeDocCount": 377,
    "totalDocCount": 669,
    "viewUrl": "http://dfg-viewer.de/show/?tx_dlf%5Bid%5D=http://zbw.eu/beta/pm20mets/pe/0058xx/005823.xml",
    "wdIndentifier": [
        "Q1001"
    ]
}
```

Beispieldaten für ein Firmen-Dossier:

```json
{
    "@id": "http://purl.org/pressemappe20/folder/co/045931",
    "@type": "CompanyFolder",
    "gndIdentifier": "4627572-1",
    "organizationType": "Kolonialgesellschaft",
    "identifier": "co/045931",
    "temporal": "1907-1934",
    "dissolutionDate": "1934",
    "foundingDate": "1906",
    "industry": [
        "Schifffahrt"
    ],
    "location": [
        "Bremen"
    ],
    "prefLabel": "Hamburg-Bremer Afrika Linie AG",
    "wikipediaPage": [
        "https://de.wikipedia.org/wiki/Hamburg-Bremer_Afrika-Linie"
    ],
    "freeDocCount": 31,
    "fromTo": "1906-1934",
    "totalDocCount": 31,
    "viewUrl": "http://dfg-viewer.de/show/?tx_dlf%5Bid%5D=http://zbw.eu/beta/pm20mets/co/0459xx/045931.xml",
    "wdIndentifier": [
        "Q15819114"
    ]
}
```
Felder, die mehrfach auftrreten können, werden durchgängig als Array ausgegeben. 

Im folgenden werden "Mappe" und "Dossier" synonym verwendet.


## Daten über die Mappe

**@id - Schlüssel** volle URL der Mappe

**@type - Mappentyp** PersonFolder oder CompanyFolder (+ stets Pm20Folder)

**identifier - Kurzschlüssel** letzter Teil der URL, in Wikidata verlinkt (PM20
folder ID, P4293)

**temporal - zeitliche Abdeckung** des gesammelten Materials

**viewUrl - Mappeninhalt** per DFG-Viewer

**totalDocCount - Gesamtzahl der Dokumente** der Mappe

**freeDocCount - Anzahl der online zugänglichen Dokumente** der Mappe

**note - Notiz** freier Text; bezieht sich z.T. auch auf den Mappengegenstand



## Daten über den Gegenstand der Mappe

**prefLabel - Name** der Person oder Firma, zugleich verwendet als Mappentitel

**gndIdentifier - GND ID** [Gemeinsame
Normdatei](https://de.wikipedia.org/wiki/Gemeinsame_Normdatei) der
deutschsprachigen Bibliotheken

**wdIdentifier - Wikidata Item ID (QID)** aus Wikidata abgeleitet. Kann
mehrfach auftreten, weil Mappen mehrere Items betreffen können. Umgekehrt kann
es zu umfangreichen Themen (z.B. Reichsbahn) mehrere Mappen geben.

**wikipediaPage - Wikipedia-Seite** aus Wikidata abgeleitet


### Daten über Personen

**nationality - Nationalität** kontrolliertes Vokabular

**hasOccupation - Tätigkeit** freier Text

**dateOfBirthAndDeath - Lebensdaten** nicht kontrolliertes Format

**birthDate - Geburtsjahr** abgeleitet aus `dateOfBirthAndDeath`

**deathDate - Todesjahr** abgeleitet aus `dateOfBirthAndDeath`



### Daten über Firmen

**organizationType - Art der Organisation** kontrolliertes Vokabul

**industry - Branche** kontrolliertes Vokabular

**location - Sitz** kontrolliertes Vokabular

**fromTo - Zeit, während der die Firma bestand** nicht kontrolliertes Format

**foundingDate - Gründungsjahr** abgeleitet aus `fromTo`

**dissolutionDate - Jahr der Auflösung** abgeleitet aus `fromTo`

**member - Beziehung zu einer Person**

**member/url - Schlüssel für die Person**

**member/name - Name der Person** abgeleitet von `url`

**member/roleName - Rolle** Funktion; kontroliertes Vokabular

**member/fromTo - Zeitraum** in dem die Person die Funktion eingenommen hat;
nicht kontrolliertes Format


## Bemerkungen zur Linked-Data-Umsetzung

Die verwendete RDF-Struktur ist noch experimentell und lediglich in
[context.jsonld](./context.jsonld) dokumentiert. Einige der benutzten
Properties (z.B. schema:hasOccupation) sind sehr frei interpretiert, die
eigentlich vorgesehene Verlinkung auf eigenständige Ressourcen fehlt noch.

Dank geht an die KollegInnen von [lobid.org](http://lobid.org), die mit ihren
Überlegungen zu besser nutzbaren Linked Open Data und entsprechenden
Implementierungen viele wertvolle Anregungen gegeben haben.

