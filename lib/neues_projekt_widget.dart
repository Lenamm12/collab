import 'meine_projekte_widget.dart';
import 'package:flutter/material.dart';

class NeuesProjektWidget extends StatefulWidget {
  const NeuesProjektWidget({Key? key}) : super(key: key);

  @override
  _NeuesProjektWidgetState createState() => _NeuesProjektWidgetState();
}

class _NeuesProjektWidgetState extends State<NeuesProjektWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF82878C),
            size: 24,
          ),
        ),
        title: const Text('Neues Projekt hinzufügen'),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFF7F7F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Projektname :',
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Beschreibung :',
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Tool : ',
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                    child: DropdownButton<String>(
                      value: dropDownValue,
                      items: <String>['6-3-5', 'ConForm', 'Whitebird', 'C-Sort']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (val) => setState(() => dropDownValue = val),
                      elevation: 2,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: ElevatedButton(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MeineProjekteWidget(),
                          ),
                        );
                      },
                      child: (const Text('Hinzufügen')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
