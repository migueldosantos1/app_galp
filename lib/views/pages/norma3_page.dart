import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma3Page extends StatelessWidget {
  const Norma3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_2',
      name: 'Condução Segura',
      imagePath: 'assets/images/norma3.png',
      title: 'Siga as regras para uma condução segura',
      videoUrl: 'https://youtu.be/XjM-iJFHSk4?si=KVBfn6Np3iGhAdqH',
      cards: const [
        "Eu uso sempre o cinto de segurança.",
        "Eu não excedo o limite de velocidade e reduzo-a de acordo com as condições da via.",
        "Eu não manuseio o telemóvel ou opero outros dispositivos enquanto conduzo.",
        "Eu estou apto, repousado e alerta enquanto conduzo.",
        "Eu sigo os requisitos da norma sobre segurança na condução.",
      ],
    );
  }
}