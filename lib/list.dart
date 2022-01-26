import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/* --------------------------------- Updater -------------------------------- */

class ListUpdater {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  static Future<Projekt> create(
      String name, String beschreibung, String tool) async {
    var doc_ref = await firestore.collection('state').add({
      'name': name,
      'beschreibung': beschreibung,
      'datum': DateTime.now(),
      'tool': tool
    });
    var doc_snap = await doc_ref.get();
    var key = doc_snap.id;
    var data = doc_snap.data();
    var item = Projekt(key, data?['name'], data?['beschreibung'],
        data?['datum'], data?['tool']);
    return item;
  }

  static Future<List<Projekt>> readAll() async {
    var col_snap = await firestore.collection('state').get();
    List<Projekt> list = [];
    col_snap.docs.forEach((element) {
      var data = element.data();
      list.add(Projekt(element.id, data['name'], data['beschreibung'],
          data['datum'], data['tool']));
    });
    return list;
  }

  static Future<Projekt> update(
      String id, String name, String beschreibung, String tool) async {
    var doc = firestore.collection('state').doc(id);
    await doc.update({'name': name});
    await doc.update({'beschreibung': beschreibung});
    await doc.update({'datum': DateTime.now()});
    await doc.update({'tool': tool});

    var doc_snap = await firestore.collection('state').doc(id).get();
    var data = doc_snap.data();
    var item = Projekt(id, data?['name'], data?['beschreibung'], data?['datum'],
        data?['tool']);
    return item;
  }

  static Future<bool> delete(String id) async {
    var delete = await firestore.collection('state').doc(id).delete();
    var doc_snap = await firestore.collection('state').doc(id).get();
    return !doc_snap.exists;
  }
}

/* ---------------------------------- Projektitem ---------------------------------- */

@immutable
class Projekt {
  late String name;
  late String beschreibung;
  late DateTime datum;
  late String id;
  late String tool;

  Projekt(this.id, this.name, this.beschreibung, this.datum, this.tool);
  @override
  String toString() {
    return "$id, $name, $beschreibung, $datum, $tool";
  }
}

/* ---------------------------------- List ---------------------------------- */

class ProjektList extends ChangeNotifier {
  final Map<String, Projekt> _items = {};
  List<Projekt> get items => _items.values.toList();

  void create(String name, String beschreibung, String tool) async {
    var item = await ListUpdater.create(name, beschreibung, tool);
    _items[item.id] = item;
    notifyListeners();
  }

  Future<void> init() async {
    var list = await ListUpdater.readAll();
    _items.clear();
    list.forEach((element) {
      _items[element.id] = element;
    });
    notifyListeners();
  }

  void delete(String id) async {
    var list = await ListUpdater.delete(id);
    if (list) {
      _items.remove(id);
      notifyListeners();
    }
  }

  void update(String id) async {
    var item = _items[id]!;
    var list =
        await ListUpdater.update(id, item.name, item.beschreibung, item.tool);
    _items[id] = list;
    notifyListeners();
  }
}
