import 'package:flutter/material.dart';

class LoginVerifikator extends StatelessWidget {
  LoginVerifikator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/image/logo.png')),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'PETUGAS VERIFIKATOR',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Silahkan login untuk masuk aplikasi',
                style: TextStyle(fontSize: 15),
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.pushNamed(context, '/main-page-verifikator');
                },
              )),
        ],
      ),
    ));
  }
}
