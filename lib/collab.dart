import 'neues_projekt_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollabWidget extends StatefulWidget {
  const CollabWidget({Key? key}) : super(key: key);

  @override
  _CollabWidgetState createState() => _CollabWidgetState();
}

class _CollabWidgetState extends State<CollabWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
        title: const Text(
          '6-3-5',
        ),
        actions: const [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 4),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                      child: Column(

                        children: [
                          Text( 'Über die 6-3-5 Methode:' , style: const TextStyle(fontWeight: FontWeight.bold)),
                          Text('Die 6-3-5 Methode wird eingesetzt, um innerhalb eines festgesetzten Zeitrahmens gemeinsam Ideen zu entwickeln. Eine Session wird gewöhnlich mit 6 Teilnehmern durchgeführt. Jeder dieser Teilnehmer hat 3 Minuten, um 3 initiale Ideen zu entwickeln und in eine Tabelle zu schreiben. Nach Ablauf der 3 Minuten wird die Tabelle im Kreis weiter gereicht, dann hat jeder Teilnehmer weitere 3 Minuten Zeit, die Ideen des Vorgängers mit eigenen Ideen und Anmerkungen zu ergänzen. Dieses Weitergeben und Weiterentwickeln wird (bei 6 Teilnehmern) insgesamt 5 Mal durchgeführt. Daher der Name 6-3-5.' ),
                          Text( '\nÜber das Tool: ' , style: const TextStyle(fontWeight: FontWeight.bold)),
                          Text('Mit unserem Tool ist es möglich, einfach eine 6-3-5 Session durchzuführen. Rundenzeit und Teilnehmerzahl sind dabei frei wählbar. Jeder Teilnehmer benötigt lediglich ein eigenes Gerät und einen Internetzugang.Um zu beginnen, erstellt der Moderator eine Session, indem er die Fragestellung und die gewünschte Zeit pro Runde angibt. Die Anzahl der Teilnehmer ist variabel, allerdings ist es sinnvoll bei einer großen Teilnehmeranzahl mehrere Gruppen zu erstellen. Damit ist die Session eröffnet. Danach wird eine Seite mit einem Code wird angezeigt und eine Übersciht, wer der Session schon beigetreten ist. Jeder Teilnehmer (einschließlich des Moderators) besucht 635online.com:3000, wählt "Session beitreten", trägt dann den Code und seinen Namen ein, damit ist der Beitritt in die Session abgeschlossen. Danach ist der Ablauf analog zur vorher beschriebenen Version auf Papier. Sobald alle Teilnehmer beigetreten sind, kann die Session vom Moderator gestartet werden. Ab dann läuft die Zeit, die für alle Teilnehmer sichtbar und synchronisiert ist. Nach Ablauf der (standardmäßig) 3 Minuten wird die Tabelle automatisch an den nächsten Teilnehmer weitergegeben und die nächste Zeile kann ausgefüllt werden. Ist die Session beendet, werden automatisch alle ausgefüllten Tabellen gesammelt und der Moderator kann alle einsehen.'),

                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Image(image: const AssetImage('images/6-3-5-Start.png'),
              width: MediaQuery.of(context).size.width * 0.9,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 40),
              child: ElevatedButton(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NeuesProjektWidget(),
                    ),
                  );
                },
                child: const Text('Neues Projekt starten'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
