import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//raiz de la aplicacion
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter liquid swipe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Esto hace que la densidad visual se adapte a la plataforma en la que ejecuta la aplicación.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pages = [
    Container(
      color: Color(0xFF7F7689),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/mercury.png",
              width: 400.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Mercurio",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFF3A342D),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.black38),
                Text(
                  "El planeta más pequeño y rápido,\nMercurio es el "
                  "planeta más cercano al Sol \ny gira alrededor de él"
                  "cada \n88 días terrestres",
                  style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF34210B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/venus.png",
              width: 220.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Venus",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFE8BB57),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFE8BB57)),
                Text(
                  "Girando en la dirección opuesta \n"
                  "para la mayoría de los planetas, Venus es el \n"
                  "planeta más caliente, y uno de los"
                  "y uno de los \n"
                  "objetos más brillantes en el cielo",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF21323D),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset("assets/images/earth.png", width: 250.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Tierra",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFF888C76),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.blueGrey),
                Text(
                  "El lugar al que llamamos hogar, \nla Tierra es la tercera roca\n"
                  "del sol y del único planeta\n"
                  "con vida conocida en él",
                  style: TextStyle(
                      color: Color(0xFFD4D4D2),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF2F1B0A),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/mars.png",
              width: 220.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Marte",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFCC8E57),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFCC8E57)),
                Text(
                  "El planeta rojo está polvoriento,\n"
                  "mundo frío con una delgada\n"
                  "atmósfera y es el hogar de cuatro robots de la NASA",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF5A504B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/jupiter.png",
              width: 220,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFC1C1C2),
                  ),
                ),
                Text(
                  "Jupiter",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFCC8E57),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.blueGrey),
                Text(
                  "Júpiter es un planeta masivo, dos veces el tamaño de\n"
                  "todos los demás planetas combinados y tiene un\n"
                  "tormenta centenaria que es más grande que la Tierra",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF717574),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/saturn.png",
              width: 320,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Saturno",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFBCB2A3),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.black38),
                Text(
                  "El más reconocible\n"
                  "planeta con un sistema de anillos helados, \n"
                  "Saturno es un \nmuy singular e interesante",
                  style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF5C787C),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/uranus.png",
              width: 240,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Urano",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFD2F3F4),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFD2F3F4)),
                Text(
                  "Urano tiene una rotación muy singular:\n gira sobre sí mismo"
                  "en un ángulo de casi \n90 grados, a diferencia de\n"
                  "otros planetas.",
                  style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF1A224D),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/neptune.png",
              width: 210,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Neptuno",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFF5183F7),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFF5183F7)),
                Text(
                  "Neptuno es ahora el\n"
                  "planeta mas distante y es un mundo frío y\n oscuro"
                  "casi 3 mil millones de millas\n"
                  "del sol.",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF8A7F7C),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/pluto.png",
              width: 220,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planeta",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                Text(
                  "Pluton",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFBCB2A3),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.black38),
                Text(
                  "¡Plutón será consistentemente el noveno \nplaneta para nosotros!"
                  "Más pequeño que la luna de la Tierra, \nPlutón era un planeta"
                  "hasta 2006 y tiene \ncinco de sus propias lunas!",
                  style: TextStyle(
                      color: Color(0xFFBCB2A3),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        enableSideReveal: true,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}
