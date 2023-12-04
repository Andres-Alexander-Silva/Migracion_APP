import 'package:flutter/material.dart';
import 'package:transito_seguro_app/pages/sidebar.dart';
//import 'package:transito_seguro_app/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 29, 94, 206),
        useMaterial3: true,
      ),
      home: const SideBarPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}