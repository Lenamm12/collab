import 'neues_projekt_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConFormWidget extends StatefulWidget {
  const ConFormWidget({Key? key}) : super(key: key);

  @override
  _ConFormWidgetState createState() => _ConFormWidgetState();
}

class _ConFormWidgetState extends State<ConFormWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
        title: const Text(
          'ConForm',
        ),
        actions: [],
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
                      child: Text(
                        'conForm ist eine Web Applikation um Konzeptpapiere kollaborativ zu erstellen. Man kann Projekte erstellen, bearbeiten und mehrere speichern. Erst muss ein Account kreiert und eingeloggt werden um alle Funktionen benutzen zu können. Wenn ein Projekt angelegt ist, kann man sein Team durch Codes einladen. Jedes Team-Mitglied kann Veränderungen vornehmen und speichern. Dazu wurde ein Kanban board dazu implementiert um den Arbeitsfluss zu verbessern. Damit kann der Nutzer seine Tasks in mehrere kleinere tasks zerteilen um Fortschritt besser zu beobachten.',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.getFont(
                          'Lexend Deca',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image(image: const AssetImage('images/conForm_start.png'),
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
