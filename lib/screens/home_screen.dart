import 'package:base_flutter/widgets/custom_home_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void _increment() {
    contador++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home_work_outlined),
        title: Text("Soy una App"),
        actions: [Text('M'), Icon(Icons.backspace_outlined)],
      ),
      body: CustomHomePage(contador: contador),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 1,
          ),
          FloatingActionButton(
            onPressed: () => _increment(),
            child: Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () => _increment(),
            child: Icon(Icons.restore_outlined),
          ),
          FloatingActionButton(
            onPressed: () => _increment(),
            child: Icon(Icons.exposure_minus_1),
          ),
        ],
        
      ),
    );
  }
}
