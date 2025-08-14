import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma9Page extends StatelessWidget {
  const Norma9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_8',
      name: 'Trabalhos em Altura',
      imagePath: 'assets/images/norma9.png',
      title: 'Proteja-se contra quedas \n quando realiza trabalhos em altura',
      videoUrl: 'https://youtu.be/1ALNv2vAhrE?si=vMMB6hm5li5JIhPg',
      cards: const [
        "Eu inspeciono todos os meus equipamentos de proteção contra queda antes de os usar.",
        "Eu prendo ferramentas e materiais de trabalho para prevenir queda de objetos.",
        "Eu apenas me ligo a pontos de ancoragem aprovados, quando trabalho fora de uma área protegida.",
      ],
    );
  }
}