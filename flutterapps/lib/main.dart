import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(webFlutter());
}

class webFlutter extends StatefulWidget {
  @override
  State<webFlutter> createState() => _webFlutterState();
}

class _webFlutterState extends State<webFlutter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "consumo webservice",
      home: Scaffold(
        appBar: AppBar(
          title: Text("webservice flutter"),
        ),
        body: Center(
          child: Container(
            child: Text("cuerpo de la aplicacion"),
          ),
        ),
      ),
    );
  }
}
