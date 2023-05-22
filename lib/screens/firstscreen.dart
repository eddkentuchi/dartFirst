import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  final options = const ['alala', 'wololo', 'chinchanpu', 'chinjabon'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo1'),
      ),
      body: ListView(children: [
        ...options
            .map((e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
            .toList()
      ]),
    );
  }
}
