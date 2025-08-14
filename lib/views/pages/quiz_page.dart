import 'package:app_galp/widgets/appbar_widget.dart';
import 'package:app_galp/widgets/hero_widget.dart';
import 'package:app_galp/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  Widget bullet(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(0, 6),
          child: Icon(Icons.circle, size: 6, color: Colors.black),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'CanaroBook',
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBD130),
      appBar: AppbarWidget(),
      bottomNavigationBar: NavbarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SizedBox.expand(
          child: Card(
            color: const Color.fromARGB(255, 247, 218, 104),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: Colors.black,
                width: 1.5,
              ),
            ),
            elevation: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Text(
                      '1/9',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'CanaroBook',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 120),
                  HeroWidget(
                    heroTag: 'ruleImage_0',
                    imagePath: 'assets/images/norma1.png',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 170),
                  const Text(
                    'Deslize para baixo',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'CanaroBook',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 80,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 60),
                  const Text(
                    'Corresponda a Regra às suas Ações \n sobre By-pass Controlos de Segurança.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'CanaroBook',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        const Text(
                          'Selecione a opção correta:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'CanaroBook',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'A)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'CanaroBook',
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bullet('Eu uso sempre cinto de segurança;'),
                            bullet('Eu não excedo o limite de velocidade e reduzo-a de acordo com as condições da via;'),
                            bullet('Eu não manuseio o telemóvel ou opero outros dispositivos enquanto conduzo;'),
                            bullet('Eu estou apto, repousado e alerta enquanto conduzo;'),
                            bullet('Eu sigo os requisitos da norma sobre segurança na condução.'),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'B)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'CanaroBook',
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bullet('Eu confirmo que as fontes de energia estão isoladas;'),
                            bullet('Eu confirmo que a atmosfera foi testada e está a ser monitorizada;'),
                            bullet('Eu inspeciono e uso o meu equipamento de proteção respiratória quando necessário;'),
                            bullet('Eu confirmo que há um vigia;'),
                            bullet('Eu confirmo que existe um plano de resgate;'),
                            bullet('Eu obtenho autorização prévia para entrar.'),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'C)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'CanaroBook',
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bullet(
                                'Eu conheço e uso equipamentos críticos de segurança e procedimentos que se aplicam à minha tarefa;'),
                            bullet(
                                'Eu obtenho autorização antes de:\n - Desabilitar ou inibir equipamentos de segurança;\n - Divergir de procedimentos;\n - Ultrapassar uma barreira de segurança.'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}