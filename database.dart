import 'package:cloud_firestore/cloud_firestore.dart';
class DatabaseService{
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference eventCollection = FirebaseFirestore.instance.collection('events');

  Future updateUserData(String name, String note, String time) async{
    return await eventCollection.doc(uid).set({
      'name': name,
      'note': note,
      'time': time,




    });
  }

}