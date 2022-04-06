import 'package:flutter/material.dart';
import 'package:iftar_app/ui/add_location_page.dart';
import 'package:iftar_app/ui/home_page.dart';
import 'package:iftar_app/ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/login': (_) => const Login(),
        '/addLocation': (_) => const AddLocation(),
      },
    );
  }
}
