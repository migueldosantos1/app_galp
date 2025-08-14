import 'package:flutter/material.dart';
import 'package:app_galp/views/pages/norma_detail_page.dart';

class Norma1Page extends StatelessWidget {
  const Norma1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return NormaDetailPage(
      heroTag: 'ruleImage_0', /*começa no zero por serem índices*/
      imagePath: 'assets/images/norma1.png',
      title: 'Obtenha autorização antes de inibir ou desabilitar controles de segurança',
      videoUrl: 'https://youtu.be/1E6LFRNpfIA?si=EmYqc6zoW2_g_qJZ',
      rules: [
        RuleItem(
          icon: Icons.check_circle,
          iconColor: Colors.green,
          text: 'Eu conheço e uso equipamentos críticos de segurança...',
        ),
        RuleItem(
          icon: Icons.warning,
          iconColor: Colors.orange,
          text: 'Desabilitar ou inibir equipamentos de segurança',
        ),
        RuleItem(
          icon: Icons.warning,
          iconColor: Colors.orange,
          text: 'Divergir de procedimentos',
        ),
        RuleItem(
          icon: Icons.warning,
          iconColor: Colors.orange,
          text: 'Ultrapassar uma barreira de segurança',
        ),
      ],
    );
  }
}