import 'package:app_galp/widgets/appbar_widget.dart';
import 'package:app_galp/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'norma1_page.dart';
import 'norma2_page.dart';
import 'norma3_page.dart';
import 'norma4_page.dart';
import 'norma5_page.dart';
import 'norma6_page.dart';
import 'norma7_page.dart';
import 'norma8_page.dart';
import 'norma9_page.dart';

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
      body: Column(
        children: [
          SizedBox(height: 10),
          Text(
            'Galp Life Saving Rules',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Text(
            'Clique no ícone da regra de segurança que pretende consultar',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(16),
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
                    radius: 40,
                    child: Image.asset(iconPaths[index], fit: BoxFit.cover),
                  ),
                );
              }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFa551F),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: Text('Iniciar Quiz'),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}