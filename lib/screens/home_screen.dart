import 'package:base_flutter/widgets/custom_home_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void increment(){
    contador++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home_work_outlined),
        title: Text("Soy una App"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              print("Boton de agregar presionado");
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              print("Boton de eliminar presionado");
            },
          ),
        ],
      ),
      body: CustomHomePage(contador: contador),
      floatingActionButton: FloatingActionButton(
        //elevaion: 10,
        //backgroundColor: Colors.red[50],
        onPressed: () => increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}


