import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma4Page extends StatelessWidget {
  const Norma4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_3',
      name: 'Controlo e Isolamento de Energia',
      imagePath: 'assets/images/norma4.png',
      title: 'Verifique o isolamento de \n todas as fontes de energias \n perigosas antes do início dos trabalhos',
      videoUrl: 'https://youtu.be/PeECIM2BOO4?si=iASZTKUr_OBqAjRW',
      cards: const [
        "Eu identifico todas as fontes de energia.",
        "Eu confirmo que as fontes de energia que representam perigo foram isoladas, bloqueadas e etiquetadas.",
        "Eu verifico que não há energia e testo para confirmar a ausência de qualquer energia residual armazenada.",
      ],
    );
  }
}