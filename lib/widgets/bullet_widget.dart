import 'package:flutter/material.dart';

Widget bullet(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(0, 6),
          child: const Icon(Icons.circle, size: 6, color: Colors.black),
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