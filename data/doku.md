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

Auch die inhaltliche Klassifizierung der Firmen und deren Beziehungs-Netzwerke
(Vorgänger/Nachfolger, übergeordnete/untergeordnete) sind "Work in Progress".

Die Veröffentlichung erfolgt im [JSON-LD](https://json-ld.org/)-Format. Es ist
über einen [context](./context.jsonld) mit erweiterten semantischen Informationen
verknüpft. Zugleich kann es unter Außerachtlassen dieses Kontexts wie jedes
andere JSON verarbeitet werden.

Beispieldaten für ein Personen-Dossier:

```json
{
  "hasOccupation": "Führer der Unabhängigkeitsbewegung",
  "gndIdentifier": "118639145",
  "wdIndentifier": [
    "Q1001"
  ],
  "temporal": "1922-",
  "freeDocCount": 377,
  "dateOfBirthAndDeath": "1869-1948",
  "birthDate": "1869",
  "viewUrl": "http://dfg-viewer.de/show/?tx_dlf%5Bid%5D=http://zbw.eu/beta/pm20mets/pe/0058xx/005823.xml",
  "totalDocCount": 669,
  "prefLabel": "Gandhi, Mohandas Karamchand",
  "activity": [
    {
      "about": "Politik",
      "location": [
        "Indien"
      ]
    }
  ],
  "nationality": "Indien",
  "identifier": "pe/005823",
  "@id": "http://purl.org/pressemappe20/folder/pe/005823",
  "@type": [
    "Pm20Folder",
    "PersonFolder"
  ],
  "deathDate": "1948"
}

```

Beispieldaten für ein Firmen-Dossier:

```json
{
  "freeDocCount": 66,
  "foundingDate": "1837",
  "member": [
    {
      "url": "http://purl.org/pressemappe20/folder/pe/002216",
      "roleName": "Leitung",
      "name": "Borsig, Ernst von",
      "fromTo": "1894-1931"
    },
    {
      "url": "http://purl.org/pressemappe20/folder/pe/002215",
      "roleName": "Gründer",
      "name": "Borsig, August",
      "fromTo": "1837-1854"
    }
  ],
  "skos:altLabel": [
    "Borsig Lokomotiv-Werke GmbH <Henningsdorf> -- [1931-1944]",
    "Rheinmetall Borsig AG <Berlin> -- [1935-1956]",
    "Borsig-Werk <Berlin>"
  ],
  "organizationType": "Unternehmen",
  "prefLabel": "A. Borsig",
  "gndIdentifier": "6055420-4",
  "temporal": "1918,1927,1929-1937,1946-1960",
  "succeedingCorporateBody": [
    {
      "url": "http://purl.org/pressemappe20/folder/co/056039",
      "name": "Deutsche Industrie-Anlagen GmbH"
    },
    {
      "url": "http://purl.org/pressemappe20/folder/co/005946",
      "name": "Babcock-Borsig AG"
    }
  ],
  "note": "1837 - Gründung der Eisengießerei A. Borsig in der Chausseestraße/ Oranienburger Tor, Berlin-Mitte, damals noch vor den Stadtmauern von Berlin.  - Die Borsigwerke in Tegel nehmen im Herbst 1898 die Produktion auf. 1933 erwarb Rheinmetall die A. Borsig GmbH; 1935 Namensänderung. Der Firmensitz wurde 1938 von Düsseldorf nach Berlin verlegt. 1939 weitere Werke in Sömmerda, Unterlüss u.a.",
  "broaderLocation": [
    "Berlin"
  ],
  "totalDocCount": 66,
  "location": [
    "Berlin-Tegel"
  ],
  "dissolutionDate": "2003",
  "subOrganization": [
    {
      "url": "http://purl.org/pressemappe20/folder/co/041863",
      "name": "Borsigwerk Aktiengesellschaft in Oberschlesien"
    }
```
Felder, die mehrfach auftreten können, werden durchgängig als Array ausgegeben.

Im folgenden werden "Mappe" und "Dossier" synonym verwendet.

Alle __kontrollierten Vokabulare__ sind hier [hier](https://github.com/zbw/cdv2018-pressemappe20/tree/master/sparql) verlinkt - mit Drill-Down bis auf Mappenebene!


## Daten über die Mappe

Feld | Bezeichnung | Kommentar
-----|-------------|----------
`@id` | Schlüssel | volle URL der Mappe
`@type` | Mappentyp | PersonFolder oder CompanyFolder (+ stets Pm20Folder)
`identifier` | Kurzschlüssel | letzter Teil der URL, in Wikidata verlinkt (PM20 folder ID, P4293)
`temporal` | zeitliche Abdeckung | des gesammelten Materials
`viewUrl` | Mappeninhalt | per DFG-Viewer
`totalDocCount` | Gesamtzahl der Dokumente | der Mappe
`freeDocCount` | Anzahl der online zugänglichen Dokumente | der Mappe
`note` | Notiz | freier Text; bezieht sich z.T. auch auf den Mappengegenstand


## Daten über den Gegenstand der Mappe

Feld | Bezeichnung | Kommentar
-----|-------------|----------
`prefLabel` | Name | der Person oder Firma, zugleich verwendet als Mappentitel
`gndIdentifier` | GND ID | [Gemeinsame Normdatei](https://de.wikipedia.org/wiki/Gemeinsame_Normdatei) der deutschsprachigen Bibliotheken
`wdIdentifier` | Wikidata Item ID (QID) | aus Wikidata abgeleitet. Kann mehrfach auftreten, weil Mappen mehrere Items betreffen können. Umgekehrt kann es zu umfangreichen Themen (z.B. Reichsbahn) mehrere Mappen geben.
`wikipediaPage` | Wikipedia-Seite | aus Wikidata abgeleitet


### Daten über Personen

Feld | Bezeichnung | Kommentar
-----|-------------|----------
`nationality` | Nationalität | kontrolliertes Vokabular
`hasOccupation` | Tätigkeit | freier Text
`dateOfBirthAndDeath` | Lebensdaten | nicht kontrolliertes Format
`birthDate` | Geburtsjahr | abgeleitet aus `dateOfBirthAndDeath`
`deathDate` | Todesjahr | abgeleitet aus `dateOfBirthAndDeath`
`activity` | Wirkungsbereich |
`activity/about` | sachlicher Wirkungsbereich | kontrolliertes Vokabular
`activity/location` | geografischer Wirkungsbereich | konrtolliertes Vokabular (Länder)
`activity/fromTo` | zeitlicher Wirkungsbereich | nicht kontrolliert


### Daten über Firmen

Feld | Bezeichnung | Kommentar
-----|-------------|----------
`organizationType` | Art der Organisation | kontrolliertes Vokabular
`industry` | Branche | kontrolliertes Vokabular
`location` | Sitz | kontrolliertes Vokabular
`broaderLocation` | übergeordnete Lokation | kontrolliertes Vokabular
`fromTo` | Zeit, während der die Firma bestand | nicht kontrolliertes Format
`foundingDate` | Gründungsjahr | abgeleitet aus `fromTo`
`dissolutionDate` | Jahr der Auflösung | abgeleitet aus `fromTo`
`member` | Beziehung zu einer Personenmappe |
`member/url` | Schlüssel für die Personmappe |
`member/name` | Name der Person | abgeleitet von `url`
`member/roleName` | Rolle | Funktion; kontroliertes Vokabular
`member/fromTo` | Zeitraum | in dem die Person die Funktion eingenommen hat; nicht kontrolliertes Format
`parentOrganization` | übergeordnete Firma/Institution |
`parentOrganization/url` | Schlüssel der Firmenmappe |
`parentOrganization/name` | Name der Firma/Institution |
`subOrganization` | untergeordnete Firma/Institution |
`subOrganization/url` | Schlüssel der Firmenmappe |
`subOrganization/name` | Name der Firma/Institution |
`preceedingCorporateBody` | Vorgängerorganisation |
`preceedingCorporateBody/url` | Schlüssel der Firmenmappe |
`preceedingCorporateBody/name` | Name der Firma/Institution |
`succeedingCorporateBody` | Nachfolgerorganisation |
`succeedingCorporateBody/url` | Schlüssel der Firmenmappe |
`succeedingCorporateBody/name` | Name der Firma/Institution |


## Bemerkungen zur Linked-Data-Umsetzung

Die verwendete RDF-Struktur ist noch experimentell und lediglich in
[context.jsonld](./context.jsonld) dokumentiert. Einige der benutzten
Properties (z.B. schema:hasOccupation) sind sehr frei interpretiert, die
eigentlich vorgesehene Verlinkung auf eigenständige Ressourcen fehlt noch.

Dank geht an die KollegInnen von [lobid.org](http://lobid.org), die mit ihren
Überlegungen zu besser nutzbaren Linked Open Data und entsprechenden
Implementierungen viele wertvolle Anregungen gegeben haben.

