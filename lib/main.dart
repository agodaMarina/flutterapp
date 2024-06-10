// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projetflutter/screens/auth/login.dart';

import 'package:projetflutter/screens/auth/signin.dart';
import 'package:projetflutter/screens/pages/home.dart';
import 'package:projetflutter/screens/pages/profile/profile.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


