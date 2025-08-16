import 'package:app_galp/views/pages/quiz_template_page.dart';
import 'package:flutter/material.dart';

class QuizPage1 extends StatelessWidget {
  const QuizPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizTemplatePage(
      questionNumber: 1,
      totalQuestions: 9,
      imagePath: 'assets/images/norma1.png',
      title: 'Corresponda a Regra às suas Ações \n sobre By-pass Controlos de Segurança.',
      options: [
        QuizOption(
          label: "A",
          index: 0,
          bullets: [
            'Eu uso sempre cinto de segurança;',
            'Eu não excedo o limite de velocidade e reduzo-a de acordo com as condições da via;',
            'Eu não manuseio o telemóvel ou opero outros dispositivos enquanto conduzo;',
            'Eu estou apto, repousado e alerta enquanto conduzo;',
            'Eu sigo os requisitos da norma sobre segurança na condução.',
          ],
        ),
        QuizOption(
          label: "B",
          index: 1,
          bullets: [
            'Eu confirmo que as fontes de energia estão isoladas;',
            'Eu confirmo que a atmosfera foi testada e está a ser monitorizada;',
            'Eu inspeciono e uso o meu equipamento de proteção respiratória quando necessário;',
            'Eu confirmo que há um vigia;',
            'Eu confirmo que existe um plano de resgate;',
            'Eu obtenho autorização prévia para entrar.',
          ],
        ),
        QuizOption(
          label: "C",
          index: 2,
          bullets: [
            'Eu conheço e uso equipamentos críticos de segurança e procedimentos que se aplicam à minha tarefa;',
            'Eu obtenho autorização antes de: \n - Desabilitar ou inibir equipamentos de segurança; \n - Divergir de procedimentos; \n - Ultrapassar uma barreira de segurança.',
          ],
        ),
      ],
    );
  }
}