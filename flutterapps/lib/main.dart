import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutterapps/modelos/pokemon.dart';
import 'package:http/http.dart';

void main() {
  runApp(webFlutter());
}

class webFlutter extends StatefulWidget {
  @override
  State<webFlutter> createState() => _webFlutterState();
}

class _webFlutterState extends State<webFlutter> {
  late Future<List<pokemon>> _Listadopokemon;

  Future<List<pokemon>> getpokemon() async {
    final Response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json"));
    String cuerpo;
    List<pokemon> lista = [];
    if (Response.statusCode == 200) {
      print(Response.body);
      cuerpo = utf8.decode(Response.bodyBytes);
      final jsonData = jsonDecode(cuerpo);
      for (var item in jsonData["pokemon"]) {
        lista.add(pokemon(item["name"], item["img"]));
      }
    } else {
      throw Exception("falla en la conexion estatus 500");
    }
    return lista;
  }

  @override
  void initState() {
    super.initState();
    _Listadopokemon = getpokemon();
  }

  @override
  Widget build(BuildContext context) {
    var futereBuilder = FutureBuilder(
        future: _Listadopokemon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: Listadopokemons(snapshot.data),
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
      title: "consumo webservice",
      home: Scaffold(
          appBar: AppBar(
            title: Text("webservice flutter"),
          ),
          body: futereBuilder),
    );
  }

  List<Widget> Listadopokemons(data) {
    List<Widget> poke = [];
    for (var itempk in data) {
      poke.add(Card(
        elevation: 2.0,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Text(itempk.num),
              Container(
                padding: EdgeInsets.all(2.0),
                height: 500,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(itempk.img), scale: 0.05),
                ),
              ),
              Text(itempk.name),
            ]),
      ));
    }
    return poke;
  }
}
