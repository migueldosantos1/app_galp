import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma7Page extends StatelessWidget {
  const Norma7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_6',
      name: 'Eleveção Mecânica de Cargas',
      imagePath: 'assets/images/norma7.png',
      title: 'Planeie a elevação de \n cargas e controle a área circundante',
      videoUrl: 'https://youtu.be/apKb0dti9e0?si=kTH65gv28iC7ceEP',
      cards: const [
        "Eu confirmo que o equipamento e a carga foram inspecionados e estão aptos para o uso.",
        "Eu opero apenas os equipamentos para os quais sou qualificado para operar.",
        "Eu estabeleço e obedeço a barreiras e respeito áreas de exclusão.",
        "Eu nunca me desloco sob cargas suspensas.",
      ],
    );
  }
}