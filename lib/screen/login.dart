import 'package:flutter/material.dart';
import 'package:petugas_wastib/screen/login_verifikator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _user_id = "halo";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/image/logo.png')),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Silahkan memilih role petugas',
                style: TextStyle(fontSize: 15),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: Text('Petugas Wastib'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login-wastib');
                },
              ),
              ElevatedButton(
                child: Text('Petugas Verifikator'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login-verivikator');
                },
              ),
            ],
          ),
        ],
      )),
    ));
  }
}
