import 'package:flutter/material.dart';

class FirstScreen2 extends StatelessWidget {
  const FirstScreen2({Key? key}) : super(key: key);
  final options = const ['alala', 'wololo', 'chinchanpu', 'chinjabon'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo2'),
      ),
      //el listview.separated no renderiza todos los registros lo hace de forma peresosa ayudando al rendimiento
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            //final game = options[index];
            //print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
