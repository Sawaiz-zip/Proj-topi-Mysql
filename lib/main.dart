import 'package:flutter/material.dart';
import 'package:project_topi/Views/home.dart';
import 'package:project_topi/Views/mainscreen.dart';
import 'package:project_topi/Views/register.dart';
import 'package:project_topi/Views/login.dart';

void main() async {
  return runApp(MaterialApp(
    initialRoute: 'home',
    routes: {
      'home': (context) => Home(),
      'register': (context) => Register(),
      'login': (context)=> Login(),
      'mainscreen':(context)=>Mainscreen()
    },
  ));
}
