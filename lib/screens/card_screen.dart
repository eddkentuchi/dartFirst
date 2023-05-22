import 'package:contador2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: const [
            AppCard1(),
            SizedBox(
              height: 20,
            ),
            AppCard2(
              imageUrl:
                  'https://s.yimg.com/ny/api/res/1.2/LRESSShwNplSJ7gFxqHtmQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQ3Nw--/https://media.zenfs.com/en/homerun/feed_manager_auto_publish_494/5f2acfff720e9a2c822eaa0b4f37e3dd',
              textoCard: 'Ala perrro',
            ),
            SizedBox(
              height: 20,
            ),
            AppCard2(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8NjqAownrz6NthokOAwMhDb5fhNO9-A-2cA&usqp=CAU',
              textoCard: 'uy un michito',
            ),
            SizedBox(
              height: 20,
            ),
            AppCard2(
                imageUrl:
                    'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/06/6b/98/a9.jpg'),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
