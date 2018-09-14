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
To be included
```

Beispieldaten für ein Firmen-Dossier:

```json
To be included
```
Felder, die mehrfach auftreten können, werden durchgängig als Array ausgegeben. 

Im folgenden werden "Mappe" und "Dossier" synonym verwendet.


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
`fromTo` | Zeit, während der die Firma bestand | nicht kontrolliertes Format
`foundingDate` | Gründungsjahr | abgeleitet aus `fromTo`
`dissolutionDate` | Jahr der Auflösung | abgeleitet aus `fromTo`
`member` | Beziehung zu einer Personenmappe |
`member/url/@id` | Schlüssel für die Personmappe |
`member/name` | Name der Person | abgeleitet von `url`
`member/roleName` | Rolle | Funktion; kontroliertes Vokabular
`member/fromTo` | Zeitraum | in dem die Person die Funktion eingenommen hat; nicht kontrolliertes Format


## Bemerkungen zur Linked-Data-Umsetzung

Die verwendete RDF-Struktur ist noch experimentell und lediglich in
[context.jsonld](./context.jsonld) dokumentiert. Einige der benutzten
Properties (z.B. schema:hasOccupation) sind sehr frei interpretiert, die
eigentlich vorgesehene Verlinkung auf eigenständige Ressourcen fehlt noch.

Dank geht an die KollegInnen von [lobid.org](http://lobid.org), die mit ihren
Überlegungen zu besser nutzbaren Linked Open Data und entsprechenden
Implementierungen viele wertvolle Anregungen gegeben haben.

