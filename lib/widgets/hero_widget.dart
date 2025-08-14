import 'package:flutter/material.dart';

//! só tenho animação quando dou pop à página... alterar para ter nos dois sentidos

class HeroWidget extends StatelessWidget {
  final String heroTag;
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit fit;

  const HeroWidget({
    super.key,
    required this.heroTag,
    required this.imagePath,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
        fit: fit,
      ),
    );
  }
}