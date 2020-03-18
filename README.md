# update-coronavirus-infos

## Hintergrund

Die Coronakrise hat auch Österreich erfasst. Das Sozialministerium bietet auf seiner [Website](https://www.sozialministerium.at/Informationen-zum-Coronavirus.html) eine Sammlung von Informationen zum Coronavirus an.

Zwei Seiten waren bisher besonders interessant:

* [Stand der Testungen und Fälle](https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html)
* [Coronavirus - Häufig gestellte Fragen](https://www.sozialministerium.at/Informationen-zum-Coronavirus/Coronavirus---Haeufig-gestellte-Fragen.html)
* [Coronavirus - Grafische Aufarbeitung](https://coronavirus.datenfakten.at/)

Das Problem ist, dass sich die Information regelmäßig ändert

Um ein wenig den Überblick zu behalten, habe ich das 'update-coronavirus-infos'-Skript geschrieben, mit dem es möglich sein soll, die Änderungen der beiden Seiten zu verfolgen.

## Wie funktioniert es?

Das Skript lädt die beiden Seiten herunter und fügt bei Änderung einer der Seiten der [Versionsverwaltung](https://de.wikipedia.org/wiki/Versionsverwaltung) hinzu.
Damit ist man in der Lage den Veränderungsverlauf in der Versionsgeschichte zu verfolgen.

Das Skript kann lokal automatisch bzw regelmäßig ausgeführt werden.

## Licence

MIT

## Author Information

Darshaka Pathirana
