import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[800],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage:
              NetworkImage('https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg'),
        ),
      ),
    );
  }
}
