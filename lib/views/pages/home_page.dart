import 'package:app_galp/widgets/appbar_widget.dart';
import 'package:app_galp/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'norma1_page.dart';
import 'norma2_page.dart';
import 'norma3_page.dart';
import 'norma4_page.dart';
import 'norma5_page.dart';
import 'norma6_page.dart';
import 'norma7_page.dart';
import 'norma8_page.dart';
import 'norma9_page.dart';

launchURL(String url) async{
  final uri = Uri.parse(url);
  if(await canLaunchUrl(uri)){
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } 
  else{
    throw 'Could not launch $url';
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  final List<String> iconPaths = [
    'assets/images/norma1.png',
    'assets/images/norma2.png',
    'assets/images/norma3.png',
    'assets/images/norma4.png',
    'assets/images/norma5.png',
    'assets/images/norma6.png',
    'assets/images/norma7.png',
    'assets/images/norma8.png',
    'assets/images/norma9.png',
  ];

  final List<Widget> pages = [
    Norma1Page(),
    Norma2Page(),
    Norma3Page(),
    Norma4Page(),
    Norma5Page(),
    Norma6Page(),
    Norma7Page(),
    Norma8Page(),
    Norma9Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBD130),
      appBar: AppbarWidget(),
      bottomNavigationBar: NavbarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Galp Life Saving Rules',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: 'CanaroBook',
              ),
            ),
            SizedBox(height: 14),
            Text(
              'Clique no ícone da regra de \n segurança que pretende consultar',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'CanaroBook',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.only(left: 50, right: 50),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(iconPaths.length, (index) {
                return GestureDetector(
                  onTap: () {
                    if (index < pages.length) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => pages[index]),
                      );
                    }
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 35,
                    child: Image.asset(
                      iconPaths[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFa551F),
                padding: EdgeInsets.symmetric(horizontal: 50),
                minimumSize: Size(40, 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                'Iniciar Quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CanaroBook',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 195), //! para resolver mais tarde
            TextButton(
              onPressed: () {
                const url = 'https://sols.galp.com/GalpLifeSavingRules/TermosCondicoes_PT';

                launchURL(url);
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding: EdgeInsets.zero,
                textStyle: TextStyle(
                  fontFamily: 'CanaroBook',
                  fontSize: 12,
                  decoration: TextDecoration.underline, //? se der, remover a animação do botão (sombra)
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.info, color: Colors.black, size: 14),
                  const SizedBox(width: 6),
                  const Text('Termos e Condições'),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}