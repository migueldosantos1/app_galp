import 'package:flutter/material.dart';

class NavbarCNZWidget extends StatefulWidget {
  const NavbarCNZWidget({super.key});

  @override
  State<NavbarCNZWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarCNZWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Image.asset(
        'assets/images/navbar_cnz_pt.PNG',
        fit: BoxFit.cover,
      ),
    );
  }
}