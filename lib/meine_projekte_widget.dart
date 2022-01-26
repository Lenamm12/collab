import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProjektList(),
      child: const MeineProjekteWidget(),
    ),
  );
}

class MeineProjekteWidget extends StatelessWidget {
  const MeineProjekteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meine Projekte',
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      home: Projekte(),
    );
  }
}

class Projekte extends StatefulWidget {
  const Projekte({Key? key}) : super(key: key);

  @override
  State<Projekte> createState() => _ProjekteState();
}

class _ProjekteState extends State<Projekte> {
  @override
  void initState() {
    print("async start");

    Future(() {
      var prov = Provider.of<ProjektList>(context, listen: false);
      prov.init().then((value) {
        print("async done");
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var list = context.watch<ProjektList>();
    return ListView.builder(
      itemCount: list.items.length,
      itemBuilder: (context, index) {
        var item = list.items[index];
        return ListTile(
          trailing: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  list.update(item.id);
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  list.delete(item.id);
                },
              ),
            ],
          ),
          title: Text(list.items[index].name),
          subtitle: Text(list.items[index].beschreibung),
        );
      },
    );
  }
}
