import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class LokasiReklame extends StatefulWidget {
  const LokasiReklame({Key? key}) : super(key: key);

  @override
  State<LokasiReklame> createState() => _LokasiReklameState();
}

class _LokasiReklameState extends State<LokasiReklame> {
  String _txtcari = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: const InputDecoration(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            labelText: "Cari Lokasi",
            labelStyle: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Colors.white),
          onFieldSubmitted: (value) {
            _txtcari = value;
            //bacaData();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.pin_drop),
              title: Text('Lokasi Reklame'),
              onTap: () {
                Navigator.pushNamed(context, '/lokasi-reklame');
              },
            ),
            ListTile(
              leading: Icon(Icons.file_copy),
              title: Text('Masukkan Data Survey'),
              onTap: () {
                Navigator.pushNamed(context, '/data-survey');
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log Out'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(-7.334962, 112.8011705),
          zoom: 15.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
            attributionBuilder: (_) {
              return Text("?? OpenStreetMap contributors");
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(51.5, -0.09),
                builder: (ctx) => Container(
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
