import 'package:contador2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return const AlertDialog(
          elevation: 5,
          title: Center(child: Text('Que pedal perro')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Esta es mi alerta'),
              AppCard1(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => displayDialog(context),
            child: const Padding(
              padding:
                  EdgeInsets.only(top: 16, bottom: 16, left: 30, right: 30),
              child: Text(
                'Mostrar alerta',
                style: TextStyle(fontSize: 18),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
