import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  //Variables, propiedades

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    const fontSizeText = TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
      ),
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          //propiedad para alinear las columnas a lo alto (toma todo el alto del dispositivo restando el appBAr)
          mainAxisAlignment: MainAxisAlignment.center,
          //Centra de izq a derecha dependiendo del ancho del widget mas grande
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Numero de clics', style: fontSizeText),
            Text('$counter', style: fontSizeText),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          setState(() {});
        },
      ),
    );
  }
}
