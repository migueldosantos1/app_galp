import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma1Page extends StatelessWidget {
  const Norma1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_0', /*começa no zero por serem índices*/
      name: 'By-pass controlos de segurança',
      imagePath: 'assets/images/norma1.png',
      title: 'Obtenha autorização antes de inibir \n ou desabilitar controles de segurança',
      videoUrl: 'https://youtu.be/1E6LFRNpfIA?si=EmYqc6zoW2_g_qJZ',
      rules: [
        RuleItem(
          text: 'Eu conheço e uso equipamentos críticos de segurança...',
        ),
        RuleItem(
          text: 'Desabilitar ou inibir equipamentos de segurança',
        ),
        RuleItem(
          text: 'Divergir de procedimentos',
        ),
        RuleItem(
          text: 'Ultrapassar uma barreira de segurança',
        ),
      ],
    );
  }
}