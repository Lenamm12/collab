import 'package:flutter/material.dart';

class MeineProjekteWidget extends StatefulWidget {
  const MeineProjekteWidget({Key? key}) : super(key: key);

  @override
  _MeineProjekteWidgetState createState() => _MeineProjekteWidgetState();
}

class _MeineProjekteWidgetState extends State<MeineProjekteWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
        title: const Text(
          'Meine Projekte',
        ),
        actions: const [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: const Color(0xFFF1F4F8),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('TODO: Funktion implementieren');
        },
        backgroundColor: Colors.blue,
        elevation: 8,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 108,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFFEEEEEE),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8, 0, 8, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 4, 0),
                                  child: Icon(
                                    Icons.search_rounded,
                                    color: Color(0xFF95A1AC),
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                    child: TextFormField(
                                      obscureText: false,
                                      decoration: const InputDecoration(
                                        labelText: 'Suche nach Projekten',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.network(
                              '',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                Text(
                                  'Erstes Projekt',
                                ),
                                Text(
                                  'Beschreibung zum ersten Projekt',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.edit_sharp,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    print('TODO: Funktion implementieren');
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    print('TODO: Funktion implementieren');
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.download_sharp,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    print('TODO: Funktion implementieren');
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
