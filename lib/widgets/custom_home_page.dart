import 'package:flutter/material.dart';

class CustomHomePage extends StatelessWidget {
  const CustomHomePage({
    super.key,
    required this.contador,
  });

  final int contador;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("Valor del contador"), Text("$contador")],
      ),
    );
  }
}