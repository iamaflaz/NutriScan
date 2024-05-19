import 'package:flutter/material.dart';
import 'package:nutriscan/pages/home.dart';
import 'package:nutriscan/pages/profil.dart';
import 'package:nutriscan/pages/scan.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nutriscan/user_auth/registerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NutriScan',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.orange),
      home: HomePage(),
    );
  }
}


