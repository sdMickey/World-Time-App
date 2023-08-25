import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      // ignore: prefer_const_constructors
      '/': (context) => Loading(),
      // ignore: prefer_const_constructors
      '/home': (context) => Home(),
      // ignore: prefer_const_constructors
      '/location': (context) => ChooseLocation(),
    },
  ));
}
