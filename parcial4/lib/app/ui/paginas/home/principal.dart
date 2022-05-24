import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMultiMarker extends StatefulWidget {
  @override
  State<MapMultiMarker> createState() => _MapMultiMarkerState();
}

class _MapMultiMarkerState extends State<MapMultiMarker> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address": "Cede Central",
      "id": "Servidor_01",
      "image":
          "https://elsalvadoreshermoso.com/wp-content/uploads/2016/11/ciudad-arce-la-libertad.jpg",
      "lat": 13.8333,
      "lng": -89.4333,
      "name": "Ciudad Arce",
      "phone": "+503 7110-0000",
      "region": "Latinoamerica"
    },
    {
      "address": "Servidor web 01",
      "id": "Servidor_02",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/9/96/Delhi_Red_fort.jpg",
      "lat": 13.7013266,
      "lng": -89.2266226,
      "name": "Salvador del Mundo",
      "phone": "+503 7110-0000",
      "region": "Latinoamerica"
    },
    {
      "address": "Servidor Web 02",
      "id": "Servidor_03",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/7/7e/Mumbai_Taj.JPG",
      "lat": 13.7104475,
      "lng": -89.1785714,
      "name": "Soyapango",
      "phone": "+503 7110-0000",
      "region": "Latinoamerica"
    },
    {
      "address": "Servidor web 03",
      "id": "Servidor_04",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
      "lat": 13.6860819,
      "lng": -89.1894334,
      "name": "San Jacinto",
      "phone": "+503 7110-0000",
      "region": "Latinoamerica"
    },
    {
      "address": "Data center",
      "id": "servidor_05",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
      "lat": 13.7025885,
      "lng": -89.2229604,
      "name": "Utec",
      "phone": "+503 7110-0000",
      "region": "Latinoamerica"
    }
  ];

  final Map<String, Marker> _markers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _markers.clear();
    setState(() {
      for (int i = 0; i < clityList.length; i++) {
        print("For Loop");
        final marker = Marker(
          markerId: MarkerId(clityList[i]['id']),
          position: LatLng(clityList[i]['lat'], clityList[i]['lng']),
          infoWindow: InfoWindow(
              title: clityList[i]['name'],
              snippet: clityList[i]['address'],
              onTap: () {
                print("${clityList[i]['lat']}, ${clityList[i]['lng']}");
              }),
          onTap: () {
            print("Clicked on marker");
          },
        );
        print("${clityList[i]['lat']}, ${clityList[i]['lng']}");
        _markers[clityList[i]['name']] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(clityList[0]['lat'], clityList[0]['lng']),
        zoom: 4.8,
      ),
      markers: _markers.values.toSet(),
    );
  }
}
