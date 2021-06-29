import 'package:flutter/material.dart';
import 'home.dart';
import 'dashboard.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/dash': (context) => Dashboard(),
    },
  ));
}
