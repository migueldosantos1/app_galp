import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFBD130),
      elevation: 0,
      titleSpacing: 0,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset(
              'assets/images/appbar.png',
              height: 40,
            ),
          ),
          const Spacer(),
          PopupMenuButton<String>(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                ),
            ),
            icon: const Icon(Icons.language, color: Colors.black),
            onSelected: (value) {
              print("Selected language: $value");
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'pt', child: Text('Português')),
              const PopupMenuItem(value: 'en', child: Text('English')),
              const PopupMenuItem(value: 'es', child: Text('Español')),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}