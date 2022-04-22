import 'package:flutter/material.dart';

class BerkasBelumDiVerifikasi extends StatefulWidget {
  const BerkasBelumDiVerifikasi({Key? key}) : super(key: key);

  @override
  State<BerkasBelumDiVerifikasi> createState() =>
      _BerkasBelumDiVerifikasiState();
}

class _BerkasBelumDiVerifikasiState extends State<BerkasBelumDiVerifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Petugas Verifikator"),
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
              leading: Icon(Icons.close),
              title: Text('Berkas Belum di Verifikasi'),
              onTap: () {
                Navigator.pushNamed(context, '/berkas-belum-diverifikasi');
              },
            ),
            ListTile(
              leading: Icon(Icons.checklist),
              title: Text('Berkas Sudah di Verifikasi'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exposure_minus_1),
              title: Text('Berkas Kurang'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.remove_circle),
              title: Text('Berkas di Cabut'),
              onTap: () {},
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Berkas Belum di Verifikasi"),
          ],
        ),
      ),
    );
  }
}
