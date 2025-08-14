import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma8Page extends StatelessWidget {
  const Norma8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_7',
      name: 'Autorização de Trabalho',
      imagePath: 'assets/images/norma8.png',
      title: 'Trabalhe com uma autorização de \n trabalho (AT) válida quando requerida.',
      videoUrl: 'https://youtu.be/cDJMOUtGDKI?si=5PCwT5PKVYjHXStL',
      cards: const [
        "Eu confirmo se uma AT é necessária.",
        "Eu estou autorizado a realizar o trabalho.",
        "Eu conheço e compreendo a AT.",
        "Eu confirmo que os perigos estão controlados e que se é seguro iniciar o trabalho.",
        "Eu paro e reavalio se as condições mudarem.",
      ],
    );
  }
}