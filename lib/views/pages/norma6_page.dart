import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma6Page extends StatelessWidget {
  const Norma6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_5',
      name: 'Linha de Fogo',
      imagePath: 'assets/images/norma6.png',
      title: 'Afaste-se e mantenha os \n outros afastados da linha de fogo',
      videoUrl: 'https://youtu.be/ES0XEjQuyVA?si=X84ONUiD9YuM-gtt',
      cards: const [
        "Eu posiciono-me para evitar: \n - Objetos ou partes móveis; \n - Veículos; \n - Libertações de pressão; \n - Queda de objetos.",
        "Eu estabeleço e obedeço a barreiras e respeito áreas de exclusão.",
        "Eu prendo objetos soltos e reporto potenciais quedas de objetos.",
      ],
    );
  }
}