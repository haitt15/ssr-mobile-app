import 'package:cloud_firestore/cloud_firestore.dart';

final databaseReference = Firestore.instance;
void getData() {
  databaseReference
      .collection("users")
      .getDocuments()
      .then((QuerySnapshot snapshot) {
    snapshot.documents.forEach((f) => print('${f.data}}'));
  });
}