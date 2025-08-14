import 'package:flutter/material.dart';

class RuleCard extends StatelessWidget {
  final String text;

  const RuleCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final bulletPoints = text.split('\n').map((e) => e.trim()).toList();

    return Card(
      color: Color(0xFFFBD130),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: bulletPoints.map((point) {
            final hasDash = point.startsWith('-');
            final cleanPoint = hasDash ? point.substring(1).trim() : point;

            if (hasDash) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                    offset: const Offset(0, 3),
                    child: Icon(Icons.circle, size: 10, color: Colors.black),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      cleanPoint,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'CanaroBook',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Text(
                cleanPoint,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'CanaroBook',
                  color: Colors.black,
                ),
              );
            }
          }).toList(),
        ),
      ),
    );
  }
}