import 'beebusy.dart';
import 'csort.dart';
import 'collab.dart';
import 'conform.dart';
import 'neues_projekt_widget.dart';
import 'whitebird.dart';
import 'package:flutter/material.dart';

class StartseiteWidget extends StatefulWidget {
  const StartseiteWidget({Key? key}) : super(key: key);

  @override
  _StartseiteWidgetState createState() => _StartseiteWidgetState();
}

class _StartseiteWidgetState extends State<StartseiteWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: const Text(
          'ColLab Tools',
        ),
        actions: const [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: GridView(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              childAspectRatio: 1,
            ),
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.05),
                        child: Text(
                          'Whitebird',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.info_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const WhitebirdWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add_circle_outline,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NeuesProjektWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.05),
                        child: Text(
                          '6-3-5',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.info_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CollabWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add_circle_outline,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NeuesProjektWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.05),
                        child: Text(
                          'C-Sort',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.info_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CSortWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add_circle_outline,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NeuesProjektWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.05),
                        child: Text(
                          'BeeBusy',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.info_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const BeeBusyWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add_circle_outline,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NeuesProjektWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.05),
                        child: Text(
                          'ConForm',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.info_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ConFormWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1, 1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add_circle_outline,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NeuesProjektWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
