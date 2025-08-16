import 'package:app_galp/widgets/appbar_widget.dart';
import 'package:app_galp/widgets/bullet_widget.dart';
import 'package:app_galp/widgets/hero_widget.dart';
import 'package:app_galp/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

class QuizTemplatePage extends StatefulWidget {
  final int questionNumber;
  final int totalQuestions;
  final String imagePath;
  final String title;
  final List<QuizOption> options;

  const QuizTemplatePage({
    super.key,
    required this.questionNumber,
    required this.totalQuestions,
    required this.imagePath,
    required this.title,
    required this.options,
  });

  @override
  State<QuizTemplatePage> createState() => _QuizTemplateState();
}

class _QuizTemplateState extends State<QuizTemplatePage> {
  int? selectedOption;

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
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Text(
                      '${widget.questionNumber}/${widget.totalQuestions}',
                      style: const TextStyle(
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
                    heroTag: 'ruleImage_${widget.questionNumber}',
                    imagePath: widget.imagePath,
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
                  Text(
                    widget.title,
                    style: const TextStyle(
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
                      children: widget.options.map((option) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${option.label})",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'CanaroBook',
                                    ),
                                  ),
                                  Checkbox(
                                    value: selectedOption == option.index,
                                    onChanged: (_) {
                                      setState(() {
                                        selectedOption = option.index;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    side: const BorderSide(color: Colors.black, width: 1.5),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: option.bullets.map((b) => bullet(b)).toList(),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
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

class QuizOption {
  final String label;
  final int index;
  final List<String> bullets;

  QuizOption({
    required this.label,
    required this.index,
    required this.bullets,
  });
}