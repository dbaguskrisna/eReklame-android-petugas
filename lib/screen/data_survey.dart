import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class DataSurvey extends StatefulWidget {
  const DataSurvey({Key? key}) : super(key: key);

  @override
  State<DataSurvey> createState() => _DataSurveyState();
}

void doLogout() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.remove("user_id");
  main();
}

class _DataSurveyState extends State<DataSurvey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Masukkan Data Survey"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
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
      body: Center(
        child: Text("Masukkan Data Survey Page"),
      ),
    );
  }
}
