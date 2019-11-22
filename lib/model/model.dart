import 'package:firebase_database/firebase_database.dart';

class Item {
  String key;
  String enWord;
  String bnWord;
  String enTrans;
  String bnTrans;


  Item(this.enWord, this.bnWord, this.enTrans, this.bnTrans);

  Item.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        bnWord = snapshot.value["bnWord"],
        enWord = snapshot.value["enWord"],
        enTrans = snapshot.value["enTrans"],
        bnTrans = snapshot.value["bnTrans"];

  toJson() {
    return {
      "bnWord": bnWord,
      "enWord": enWord,
      "enTrans": enTrans,
      "bnTrans": bnTrans,
    };
  }
}