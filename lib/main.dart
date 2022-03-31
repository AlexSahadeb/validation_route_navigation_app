import 'package:flutter/material.dart';
import 'package:validation_route_navigation/loginpage.dart';
import 'package:validation_route_navigation/secoundpage.dart';
import 'package:validation_route_navigation/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplasPage(),
        "/Login": (context) => const LoginPage(),
        "/secoud": (context) => const ScoundPage(),
      }));
}
