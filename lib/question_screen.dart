import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return const Text(
      'Questions Screen',
      style: TextStyle(
        fontSize: 32,
        
      ),
    );
  }
}
