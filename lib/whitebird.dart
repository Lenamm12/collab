import 'neues_projekt_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhitebirdWidget extends StatefulWidget {
  const WhitebirdWidget({Key? key}) : super(key: key);

  @override
  _WhitebirdWidgetState createState() => _WhitebirdWidgetState();
}

class _WhitebirdWidgetState extends State<WhitebirdWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
        title: const Text(
          'Whitebird',
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
                        'Whitebird ist ein open-source, web-basiertes, collaboratives und digitales Whiteboard. Man kann Whiteboard-Rooms kreieren, diese via Codes oder Links beitreten, zusammen ein Whiteboard bearbeiten, diese als .png/.pdf exportieren und Sticky Notes dazufügen. Es werden die typischen Whiteboard-Tools wie Farben und Stifte genutzt und man kann Textfelder oder geometrische Objekte wie Kreise oder Vierecke anlegen. Jedes dieser Objekte kann auch gelöscht, verschoben, rotiert oder skaliert werden.',
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
            Image(image: const AssetImage('images/whitebird.png'),
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
