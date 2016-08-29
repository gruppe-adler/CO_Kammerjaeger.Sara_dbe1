//ÜBER DIE MISSION =============================================================
author = "McDiod für Gruppe Adler";                                               //Missionsersteller (Du)
onLoadName = "OP KAMMERJÄGER";                                                   //Name der Mission
onLoadMission = "";                                                             //Beschreibung der Mission (wird im Ladebildschirm unterhalb des Ladebildes angezeigt)
loadScreen = "data\loadpic.paa";                                                //Ladebild


//BRIEFING =====================================================================
                                                                                //Briefingeinträge - Wenn Variable leeren String enthält (Bsp.: _lage = ""), wird dieser Eintrag nicht erstellt.
                                                                                //Geschehnisse bis jetzt, Feindlage (Stärke, Verhalten, Absicht), eigene Lage (Stärke, Position, Absicht)
_lage = "Nach der Befriedung des Sahranischen Bürgerkriegs durch die NATO ist die Bundeswehr nun mit der Friedenssicherung auf der Insel beauftragt.Im bergigen Nordwesten haben sich die letzten Rebellen zusammengerottet und verschanzt.Ihr Hauptquartier befindet sich vermutlich auf der Isla del Vassal, auf der wir das Gros der verbleibenden Kräfte erwarten.Sie sind mit Ihrem Team im alten Militärlager Pesadas stationiert und sollen nun ein für alle Mal die Rebellen von Sahrani vertreiben.";

                                                                                //Darlegung des Missionszieles
_auftrag = "Säubern Sie den Nordwesten Sahranis, sowie die Inseln Isla del Vida und Isla del Vassal von den Rebellen. Sammeln Sie Informationen über verbleibende Zellen, die aus der Bevölkerung heraus agieren könnten.";

                                                                                //Wie soll das Missionsziel erreicht werden? Truppeneinteilung, Sicherung, Gefechtsaufklärung
_durchfuehrung = "Sie haben ein MMG Team, sowie ein Mörser Team dabei. Nutzen Sie das MMG dazu, die befestigten Positionen im Gebirge auszuschalten. Wenn das Gebirge geklärt ist, begeben Sie sich in Sichtposition auf die Kleininseln. Nutzen Sie den Mörser, um Verteidigungsanlagen auf den Inseln auszuschalten. Lassen Sie sich auf die Inseln übersetzen und säubern Sie sie. Sammeln Sie alle nützlichen Informationen, die Sie auf den Inseln finden.";

                                                                                //Informationen über unterstützende Einheiten (Luft, Artillerie, etc.) und Nachschub / Versorgungsmöglichkeiten
_einsatzunterstuetzung = "Eine deutsche CH-53 wird Sie ins Einsatzgebiet fliegen. Sobald das Gebirge sicher ist, können Sie einen MH-6 Littlebird anfordern, der Sie als schnelle, flexible Transportplattform zwischen Berg und Tal befördert. Der Littlebird kann Sie außerdem zur Isla del Vassal übersetzen, sobald die Verteidigungsanlagen ausgeschaltet sind. Sie müssen bei dieser Mission ohne direkte oder indirekte Feuerunterstützung auskommen. Munitionsnachschub kann ebenfalls nicht gewährleistet werden";



//ALLGEMEINE EINSTELLUNGEN =====================================================
_timeMultiplication = 1;                                                        //Zeit-Multiplikator - Eine Spiel-Stunde dauert (eine Echtzeit-Stunde * _timeMultiplication) - mögliche Werte: Zahl > 0



//AI CACHING ===================================================================
_useCaching = true;                                                            //F3 Caching - wenn ausgeschaltet, können alle anderen Caching-Einstellungen vernachlässigt werden - mögliche Werte: true, false
                                                                                //Caching bringt bessere Performance bei vielen KI-Einheiten, die nicht in direktem Kontakt mit den Spielern stehen. Einheiten werden "ausgeblendet".
                                                                                //Caching macht nur Sinn, wenn ohne Headless Client gespielt wird, da Einheiten auf dem HC nicht gecached werden können.

_cachingDebug = 1;                                                              //Caching Debug Mode - mögliche Werte: 0,1 (0 - off, 1 - on)

_cachingRange = 1500;                                                           //Abstand zu Spielereinheiten, nach der KI-Einheiten gecached werden können - mögliche Werte: Zahl > 0
                                                                                //Achtung: Gecachte Einheiten sind für die Spieler nicht sichtbar! chachingRange muss also größer als die übliche Sichtweite sein, aber klein genug für gute Performance.
                                                                                // --> In städtischen Missionen kann der Wert kleiner sein / In Missionen in offenem Gelände muss der Wert größer sein.

_cachingAgressiveness = 2;                                                      //Welche Einheiten gecached werden:
                                                                                // 1 - nur nicht-Gruppenführer und nicht-Fahrer (dies ist die richtige Einstellung für Zeus-Missionen, da auch gecachte Gruppen kontrollierbar bleiben!)
                                                                                // 2 - alle statischen Einheiten exklusive Fahrer (dies ist die richtige Einstellung für fast alle anderen Missionen)
                                                                                // 3 - alle Einheiten inklusive Fahrer und Gruppenführer

_uncacheForZeus = true;
