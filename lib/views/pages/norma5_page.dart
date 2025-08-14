import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma5Page extends StatelessWidget {
  const Norma5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_4',
      name: 'Trabalhos a Quente',
      imagePath: 'assets/images/norma5.png',
      title: 'Controle materiais \n inflamáveis e fontes de ignição',
      videoUrl: 'https://youtu.be/8W4UE65rXTw?si=W-YW2PBjQ4fsviSL',
      cards: const [
        "Eu identifico e controlo todas as fontes de ignição.",
        "Antes de iniciar qualquer trabalho a quente: \n - Eu obtenho autorização.",
        "Antes de iniciar o trabalho a quente numa área perigosa/classificada, eu confirmo que: \n - Foi realizado um teste de gás; \n - A monitorização de gases será realizada continuamente.",
      ],
    );
  }
}