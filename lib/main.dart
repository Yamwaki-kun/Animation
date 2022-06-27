import 'package:animation/Home.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(
          fontFamily: 'Soularic'
        ),
    initialRoute: "/",
    routes: {
          "/Home":(context) => Home()},
    home: Login(),
        debugShowCheckedModeBanner: false,

  ));
}
