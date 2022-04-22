import 'package:flutter/material.dart';
import 'package:petugas_wastib/screen/berkas_belum_diverifikasi.dart';
import 'package:petugas_wastib/screen/berkas_dicabut.dart';
import 'package:petugas_wastib/screen/berkas_kurang.dart';
import 'package:petugas_wastib/screen/berkas_sudah_diverifikasi.dart';
import 'package:petugas_wastib/screen/data_survey.dart';
import 'package:petugas_wastib/screen/login.dart';
import 'package:petugas_wastib/screen/login_verifikator.dart';
import 'package:petugas_wastib/screen/login_wastib.dart';
import 'package:petugas_wastib/screen/lokasi_reklame.dart';
import 'package:petugas_wastib/screen/main_page.dart';
import 'package:petugas_wastib/screen/main_page_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Login(),
        "/login-wastib": (context) => LoginWastib(),
        "/login-verivikator": (context) => LoginVerifikator(),
        "/lokasi-reklame": (context) => LokasiReklame(),
        "/data-survey": (context) => DataSurvey(),
        "/main-page-wastib": (context) => MainPageWastib(),
        "/main-page-verifikator": (context) => MainPageVerifikator(),
        "/berkas-belum-diverifikasi": (context) => BerkasBelumDiVerifikasi(),
        "/berkas-sudah-diverifikasi": (context) => BerkasSudahDiVerifikasi(),
        "/berkas-kurang": (context) => BerkasKurang(),
        "/berkas-di-cabut": (context) => BerkasDiCabut()
      },
    );
  }
}
