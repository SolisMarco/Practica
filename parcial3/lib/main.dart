import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:parcial3/naves.dart';

void main() {
  runApp(parcial3());
}

class parcial3 extends StatefulWidget {
  @override
  State<parcial3> createState() => _parcial3State();
}

class _parcial3State extends State<parcial3> {
  late Future<List<results>> _Listadonaves;

  get dinamic => null;

  Future<List<results>> getnaves() async {
    final Response =
        await http.get(Uri.parse("https://swapi.dev/api/starships"));
    String cuerpo;
    List<results> lista = [];
    if (Response.statusCode == 200) {
      print(Response.body);
      cuerpo = utf8.decode(Response.bodyBytes);
      final jsonData = jsonDecode(cuerpo);
      for (var item in jsonData["results"]) {
        lista.add(results(
            item["name"],
            item["model"],
            item["manufacturer"],
            item["cost_in_credits"],
            item["length"],
            item["max_atmosphering_speed"],
            item["crew"],
            item["passengers"],
            item["cargo_capacity"],
            item["consumables"],
            item["hyperdrive_rating"],
            item["MGLT"],
            item["starship_class"]));
      }
    } else {
      throw Exception("falla en la conexion estatus 500");
    }
    return lista;
  }

  @override
  void initState() {
    super.initState();
    _Listadonaves = getnaves();
  }

  @override
  Widget build(BuildContext context) {
    var futereBuilder = FutureBuilder(
        future: _Listadonaves,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: Listadonaves(snapshot.data),
            );
          } else {
            print(snapshot.error);
            return Text("Error");
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "STAR WARS API",
      home: Scaffold(
          appBar: AppBar(
            title: Text("STAR WARS NAVES"),
          ),
          body: futereBuilder),
    );
  }

  List<Widget> Listadonaves(data) {
    List<Widget> nav = [];
    for (var itemNV in data) {
      nav.add(Card(
        elevation: 2.0,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(itemNV.name),
              Text(itemNV.model),
              Text(itemNV.manufacturer),
              Text(itemNV.cost_in_credits),
              Text(itemNV.length),
              Text(itemNV.max_atmosphering_speed),
              Text(itemNV.crew),
              Text(itemNV.passengers),
              Text(itemNV.cargo_capacity),
              Text(itemNV.consumables),
              Text(itemNV.hyperdrive_rating),
              Text(itemNV.MGLT),
              Text(itemNV.starship_class),
            ]),
      ));
    }
    return nav;
  }
}
