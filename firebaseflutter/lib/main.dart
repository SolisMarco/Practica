import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(firebaseflutter());
}

class firebaseflutter extends StatelessWidget {
  const firebaseflutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

@override
void initState() {
  super.initState();
}

void getUsuario() async {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("usuarios");
  QuerySnapshot usuarios = await collectionReference.get();
  if (usuarios.docs.length != 0) {
    for (var docu in usuarios.docs) {
      print(docu.data());
    }
  }
}

class AppFlut extends StatefulWidget {
  AppFlut({Key? key}) : super(key: key);

  @override
  State<AppFlut> createState() => _AppFlutState();
}

class _AppFlutState extends State<AppFlut> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
