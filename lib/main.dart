import 'package:flutter/material.dart';
import 'package:base_flutter/screens/home_screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi primer App",
      home: HomeScreen(),
      theme: ThemeData.light(),
    );
  }
}
//Correr App: //?F5