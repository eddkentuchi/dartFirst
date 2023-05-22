import 'package:flutter/material.dart';
import 'package:contador2/theme/app_theme.dart';

class AppCard1 extends StatelessWidget {
  const AppCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Si soy'),
            subtitle: Text(
                'Elit magna ea enim anim commodo velit dolore ipsum ea ullamco magna excepteur. Eu enim incididunt officia excepteur incididunt amet cillum sit. Consequat ipsum laboris non sint id. Cupidatat sit sit ad non laborum officia veniam in magna aute tempor nostrud. Ut occaecat amet ad adipisicing occaecat consequat nulla ad.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppCard2 extends StatelessWidget {
  final String imageUrl;
  final String? textoCard;
  const AppCard2({
    Key? key,
    required this.imageUrl,
    this.textoCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //ajusta el contenido de la targeta al tamaño de la misma
      clipBehavior: Clip.antiAlias,
      //pone un borde en mi tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //sombreado de la tarjeta
      elevation: 10,
      child: Column(
        children: [
          //este tipo de witget carga una imagen en local antes de renderizar una imagen referenciada de un link
          FadeInImage(
            //imagen a mostrar
            image: NetworkImage(imageUrl),
            //imagen de carga
            placeholder: const AssetImage('assets/jar-loading.gif'),
            //ajusta el ancho de la imagen en la tarjeta
            width: double.infinity,
            height: 230,
            //tipo de recorte de la imagen ajuste
            fit: BoxFit.cover,
            //duración de la imagen de precarga
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (textoCard != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 14),
              child: Text(textoCard ?? 'Este ya es el mamalon'),
            )
        ],
      ),
    );
  }
}
