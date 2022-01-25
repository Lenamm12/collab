// ignore_for_file: prefer_const_constructors

import 'neues_projekt_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeeBusyWidget extends StatefulWidget {
  const BeeBusyWidget({Key? key}) : super(key: key);

  @override
  _BeeBusyWidgetState createState() => _BeeBusyWidgetState();
}

class _BeeBusyWidgetState extends State<BeeBusyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
        title: Text(
          'BeeBusy',
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
              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 4),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                      child: Text(
                        'Beschreibung und Hilfestellungen ....',
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
            Image.network(
              '',
              width: MediaQuery.of(context).size.width * 0.9,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 40),
              child: ElevatedButton(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NeuesProjektWidget(),
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
