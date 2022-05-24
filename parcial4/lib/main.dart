import 'package:flutter/material.dart';
import 'package:parcial4/app/ui/paginas/home/principal.dart';

void main() {
  runApp(FlutterMaps());
}

class FlutterMaps extends StatelessWidget {
  const FlutterMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter parcial",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PrincipalPage(),
    );
  }
}
