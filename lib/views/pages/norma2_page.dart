import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma2Page extends StatelessWidget {
  const Norma2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_1',
      name: 'Espaços Confinados',
      imagePath: 'assets/images/norma2.png',
      title: 'Obtenha autorização antes \n de entrar em espaços confinados',
      videoUrl: 'https://youtu.be/qPjJD0vWrFQ?si=XgknXll2WwqBnZSb',
      cards: const [
        "Eu confirmo que as fontes de energia estão isoladas.",
        "Eu confirmo que a atmosfera foi testada e está a ser monitorizada.",
        "Eu inspeciono e uso o meu equipamento de proteção respiratória quando necessário.",
        "Eu confirmo que há um vigia.",
        "Eu confirmo que existe um plano de resgate.",
        "Eu obtenho autorização prévia para entrar.",
      ],
    );
  }
}